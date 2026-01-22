This is a test suite for Inferno OS JIT compiler to aarch64.

These are small limbo programs that are compiled to dis and
at runtime JIT compiled to aarch64.

To compile limbo to dis run
`limbo file.b`

To generate the dis assembly run
`limbo -S file.b`

The `$ROOT` variable points to the root of the inferno OS file system.
`$ROOT` should be set to /home/caerwyn/inferno64

Before running the dis file it needs to be copied to $ROOT/dis.

`mk install` will copy all dis files in the current folder to $ROOT/dis.

The mkfile has default rules to compile limbo files in the
directory to dis files.

To run a dis file 
`emu -c5 -d /dis/file.dis`

This will output debugging information with the aarch64 assembly.
The debugging output can be used to verify that each dis instruction is compiled
to the appropriate sequence of native machine instructions.

The source code for the JIT compiler for aarch64 platform is in /home/caerwyn/inferno64/libinterp/comp-arm64.c

