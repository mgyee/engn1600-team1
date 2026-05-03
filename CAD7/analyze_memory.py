#!/usr/bin/env python3
"""
Analyze VCD dump to extract memory writes.
When mem_write=1 and clk transitions, the entry at dmem_addr latches rdst.
"""

import sys
import re
from collections import defaultdict

def parse_vcd(vcd_filename, debug=False):
    """Parse VCD file and return signal data."""
    
    signals = {}
    signal_values = {}
    memory_writes = defaultdict(lambda: None)
    
    in_header = True
    clk_code = None
    mem_write_code = None
    dmem_addr_code = None
    rdst_code = None
    
    with open(vcd_filename, 'r') as f:
        for line in f:
            line = line.rstrip('\n')
            
            if in_header:
                if line.startswith('$var wire'):
                    parts = line.split(None, 4)
                    if len(parts) >= 5:
                        code = parts[3]
                        name = parts[4].replace(' $end', '')
                        signals[code] = name
                        
                        if name == 'x1.mem_write':
                            mem_write_code = code
                        elif name == 'x1.clkb':
                            clk_code = code
                        elif name == 'x1.dmem_addr':
                            dmem_addr_code = code
                        elif name == 'x1.rdst':
                            rdst_code = code
                
                elif line == '$enddefinitions $end':
                    in_header = False
                    for code in signals:
                        signal_values[code] = 'x'
                    
                    if debug:
                        print(f"Found: clk={clk_code}, mem_write={mem_write_code}, addr={dmem_addr_code}, rdst={rdst_code}")
                    continue
            
            else:
                if line.startswith('#') or line.startswith('$'):
                    continue
                
                # Parse value change
                if line.startswith('b'):
                    match = re.match(r'b([01xXzZ]+)\s+(.+)', line)
                    if match:
                        value, code = match.groups()
                        old_val = signal_values.get(code)
                        signal_values[code] = value.lower()
                        
                        if code == clk_code and old_val and old_val != value.lower():
                            _check_write(signal_values, memory_writes, clk_code, mem_write_code, dmem_addr_code, rdst_code, debug)
                
                elif line and line[0] in '01xXzZ':
                    value = line[0].lower()
                    code = line[1:]
                    if code in signals:
                        old_val = signal_values.get(code)
                        signal_values[code] = value
                        
                        if code == clk_code and old_val and old_val != value:
                            _check_write(signal_values, memory_writes, clk_code, mem_write_code, dmem_addr_code, rdst_code, debug)
    
    return memory_writes

def _check_write(signal_values, memory_writes, clk_code, mem_write_code, dmem_addr_code, rdst_code, debug=False):
    mem_write_val = signal_values.get(mem_write_code, 'x')
    dmem_addr_val = signal_values.get(dmem_addr_code, 'x')
    rdst_val = signal_values.get(rdst_code, 'x')
    
    if mem_write_val == '1' and 'x' not in dmem_addr_val and 'z' not in dmem_addr_val:
        try:
            addr = int(dmem_addr_val, 2)
            memory_writes[addr] = rdst_val
            if debug:
                print(f"DEBUG: Memory write: addr {addr} (0x{addr:04x}) = {rdst_val}")
        except ValueError:
            pass

def main():
    if len(sys.argv) < 2:
        print("Usage: python analyze_memory_v2.py <vcd_file>")
        sys.exit(1)
    
    debug = '--debug' in sys.argv
    vcd_file = [arg for arg in sys.argv[1:] if not arg.startswith('--')][0] if any(not arg.startswith('--') for arg in sys.argv[1:]) else sys.argv[1]
    
    print(f"Parsing {vcd_file}...")
    memory_writes = parse_vcd(vcd_file, debug=debug)
    
    print(f"\nMemory writes detected: {len(memory_writes)}")
    print("=" * 50)
    for addr in sorted(memory_writes.keys()):
        value = memory_writes[addr]
        try:
            val_int = int(value, 2)
            print(f"Address {addr:5d} (0x{addr:04x}): {value} = 0x{val_int:04x} ({val_int})")
        except ValueError:
            print(f"Address {addr:5d} (0x{addr:04x}): {value}")

if __name__ == '__main__':
    main()
