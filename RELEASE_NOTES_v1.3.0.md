# v1.3.0

Adds the firmware images used for the revised manuscript (manuscript_rev02) under `firmware/rev02/`:

- `single_block/<MODE>_1block_60nop.coe`: the single-block images that produced the paper's PT->CT and PT->BRAM
  values (fixed 60-NOP wait, no STATUS polling). These are the original images, byte-identical.
- `single_block/<MODE>_1block_poll.coe` and `<MODE>_1block_9nop.coe`: the same firmware with the wait replaced by
  STATUS polling or by the minimum safe fixed delay (9 NOPs).
- `ctr_4kib/CTR_4KiB_poll.coe` and `CTR_4KiB_9nop.coe`: the same two variants of the 4 KiB CTR workload
  (`firmware/CTR_4KiB.coe` is the 60-NOP image).
- `four_block_nist/<MODE>_4block.coe`: four consecutive NIST SP 800-38A blocks per mode.
- An assembly listing (`.S`) for every image and `firmware/rev02/README.md` with the measured cycle counts for this
  repository's CPU and the SHA-256 of every file.

No RTL, IP, block design, constraint, existing firmware or previously reported result changed.
`reproducibility/SHA256SUMS.txt` lists the new files.
