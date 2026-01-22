# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Test suite for the Inferno OS Dis virtual machine JIT compiler. Tests verify that Limbo bytecode (Dis format) is correctly compiled to native ARM64 (aarch64) machine code.

JIT compiler source: `/home/caerwyn/inferno64/libinterp/comp-arm64.c`

## Environment Setup

Set `$ROOT` to the Inferno OS installation:
```bash
export ROOT=/home/caerwyn/inferno64
```

## Build Commands

Uses `mk` (Plan 9/Inferno build tool):

```bash
mk all          # Build all: .dis, .s, .h, .jit files
mk install      # Copy .dis files to $ROOT/dis
mk coverage     # Calculate instruction set coverage percentage
mk isa-report   # Generate report of unique instructions per test
mk nuke         # Clean generated files
```

## Running Tests

```bash
# Run single test with JIT debug output
emu -c5 -d /dis/t01.dis

# Run all tests
./test -c5    # or ./test -c1 for single-level compilation

# Debug with gdb
gdb --args $ROOT/emu/Linux/o.emu -c5 -d /dis/t01.dis
# Set breakpoint at comvec() in xec.c, then:
# disassemble/r comvec,+40
# x/i $rip
```

## File Types

- `.b` - Limbo source (test cases)
- `.m` - Limbo module definitions
- `.dis` - Dis bytecode (generated)
- `.s` - Dis assembly (generated via `limbo -S`)
- `.jit` - Captured JIT compilation output (generated)

## Compilation Pipeline

```
Limbo source (.b) → limbo → Dis bytecode (.dis) → emu -c5 -d → ARM64 native code
```

## Adding a New Test

1. Create `tNN.b` Limbo source file
2. Run `mk all` to compile and generate JIT output
3. Run `mk install` to copy to `$ROOT/dis`
4. Check `.jit` file to verify ARM64 code generation
5. Run `mk coverage` to see instruction coverage impact

## Coverage Tracking

- `inst` - Instructions covered by tests
- `uncovered` - Instructions not yet tested
- `isa.md` - Reference grid of all Dis instructions
