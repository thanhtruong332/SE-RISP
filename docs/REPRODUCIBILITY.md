# Reproducibility metadata

| Item | Value |
| --- | --- |
| RTL origin | Custom RTL snapshot supplied by the project owner |
| Repository | https://github.com/thanhtruong332/SE-RISP |
| Release | `v1.2.0` (use `git rev-parse v1.2.0^{commit}` for the immutable commit) |
| License | No open-source license is declared; see `LICENSE_STATUS.md` |
| ISA | RV32I, ISA specification version 2.1 |
| Pipeline | Non-pipelined, single-instruction datapath |
| Branch resolution | Instruction datapath computes `next_pc` directly |
| Forwarding | Not applicable; there are no overlapping pipeline stages |
| Hazard detection | Not applicable; there are no overlapping pipeline stages |
| Multiplier | None |
| Bit manipulation | None |
| Register file | 32 x 32-bit; synchronous write and asynchronous read |
| Hardware memory interface | AXI4-Lite master connected to instruction/data BRAM and the AES peripheral |
| FPGA and clock | ZedBoard `xc7z020clg484-2`; 40 MHz experiment clock |
| Vivado version | 2024.2 |

The repository contains the packaged RISSP and AES IP sources, block-design
configuration, constraints and the firmware image required to reconstruct the
project. Generated runs, caches, checkpoints and bitstreams are deliberately
excluded.

## Curated evidence package

The [`reproducibility/`](../reproducibility/) directory contains the measured artifacts, tool metadata and SHA-256 inventory associated with this release. Run `python reproducibility/verify_sha256.py` from any directory to verify it.
