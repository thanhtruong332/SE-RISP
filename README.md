# SE-RISP

Portable Vivado source package for the SE-RISP design used in the SE-RISSP experiments.

## Contents

- `ip_repo/rissp_original_1_1`: packaged CPU IP (`xilinx.com:user:rissp_top:1.1`).
- `ip_repo/AES_hardware_final_1_1`: packaged AES-128 AXI IP.
- `design/`: Vivado block design and XCI configuration files.
- `constraints/zedboard.xdc`: ZedBoard constraints.
- `firmware/CTR_4KiB.coe`: memory initialization image used by the committed block design.
- `scripts/create_project.tcl`: creates a clean Vivado project using repository-relative paths.

## Recreate the project

Requirements: Vivado 2024.2 and device support for `xc7z020clg484-2`.

```powershell
vivado -mode batch -source scripts/create_project.tcl
```

The generated project is written under `build/` and is intentionally excluded from Git. Open the generated `.xpr` in Vivado after the script completes.

## Reproducibility scope

Only source, packaged custom IP, block-design configuration, constraints and the required memory image are versioned. Generated runs, caches, reports, checkpoints and bitstreams are excluded.

Architecture and tool metadata are listed in [`docs/REPRODUCIBILITY.md`](docs/REPRODUCIBILITY.md).

## License

See `LICENSE_STATUS.md`.
