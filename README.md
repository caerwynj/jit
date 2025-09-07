Small limbo programs for testing the dis JIT compiler on amd64 and arm64.

These tests are run in `gdb` with args `-c5 -d /dis/<prog>.dis`.

In gdb set breakpoint at the xec.c comvec() call.
Then `disassemble/r comvec,+40` to disassemble and step through instructions.

```
x/i $rip
```
