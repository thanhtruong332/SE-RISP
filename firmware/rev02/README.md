# Rev02 firmware (SE-RISSP)

Firmware images used for the revised manuscript (manuscript_rev02). The same binaries are published in the
SE-RISP, RV32I_based_SoC and RV32IMB_based_SoC repositories. Cycle counts below were measured on this
repository's CPU (SE-RISSP) with Vivado XSim 2024.2 at 40 MHz.

* PT→CT: plaintext word 0 AW handshake → ciphertext word 3 R handshake.
* PT→BRAM: plaintext word 0 AW handshake → last BRAM write (256 blocks for the 4 KiB CTR images).
* `.S` files are assembly listings of the corresponding image; the `_60nop.coe` images are the original
  paper images (byte-identical), the other images are assembled from the `.S` files.

To load an image, set the instruction memory of the block design:
`set_property CONFIG.Coe_File {<path>/<image>.coe} [get_bd_cells blk_mem_gen_0]`, then `generate_target all`.

## Single block (paper v1 measurement and wait-policy variants)

| Image | Mode | AES completion wait | STATUS reads | PT→CT (cycles) | PT→BRAM (cycles) | Ciphertext |
|---|---|---|---:|---:|---:|---|
| `single_block/ECB_1block_60nop.coe` | ECB | fixed 60-NOP delay, no polling | 0 | 136 | 167 | correct |
| `single_block/ECB_1block_poll.coe` | ECB | STATUS polling (lw/andi/beq on 0x24) | 2 | 98 | 129 | correct |
| `single_block/ECB_1block_9nop.coe` | ECB | fixed 9-NOP delay, no polling | 0 | 85 | 116 | correct |
| `single_block/CBC_1block_60nop.coe` | CBC | fixed 60-NOP delay, no polling | 0 | 136 | 167 | correct |
| `single_block/CBC_1block_poll.coe` | CBC | STATUS polling (lw/andi/beq on 0x24) | 2 | 98 | 129 | correct |
| `single_block/CBC_1block_9nop.coe` | CBC | fixed 9-NOP delay, no polling | 0 | 85 | 116 | correct |
| `single_block/CTR_1block_60nop.coe` | CTR | fixed 60-NOP delay, no polling | 0 | 136 | 167 | correct |
| `single_block/CTR_1block_poll.coe` | CTR | STATUS polling (lw/andi/beq on 0x24) | 2 | 98 | 129 | correct |
| `single_block/CTR_1block_9nop.coe` | CTR | fixed 9-NOP delay, no polling | 0 | 85 | 116 | correct |
| `single_block/CFB_1block_60nop.coe` | CFB | fixed 60-NOP delay, no polling | 0 | 136 | 167 | correct |
| `single_block/CFB_1block_poll.coe` | CFB | STATUS polling (lw/andi/beq on 0x24) | 2 | 98 | 129 | correct |
| `single_block/CFB_1block_9nop.coe` | CFB | fixed 9-NOP delay, no polling | 0 | 85 | 116 | correct |

## 4 KiB CTR (256 blocks)

| Image | AES completion wait | STATUS reads | PT→BRAM (cycles) | Ciphertext |
|---|---|---:|---:|---|
| `firmware/CTR_4KiB.coe` (existing) | fixed 60-NOP delay, no polling | 0 | 46,323 | correct |
| `ctr_4kib/CTR_4KiB_poll.coe` | STATUS polling (lw/andi/beq on 0x24) | 512 | 36,595 | correct |
| `ctr_4kib/CTR_4KiB_9nop.coe` | fixed 9-NOP delay, no polling | 0 | 33,267 | correct |

## Four consecutive blocks, NIST SP 800-38A (F.1.1, F.2.1, F.5.1, F.3.13)

| Image | Mode | AES completion wait | Blocks matching NIST |
|---|---|---|---:|
| `four_block_nist/ECB_4block.coe` | ECB | fixed 60-NOP delay, no polling | 4/4 |
| `four_block_nist/CBC_4block.coe` | CBC | fixed 60-NOP delay, no polling | 4/4 |
| `four_block_nist/CTR_4block.coe` | CTR | fixed 60-NOP delay, no polling | 4/4 |
| `four_block_nist/CFB_4block.coe` | CFB-128 | fixed 60-NOP delay, no polling | 4/4 |

## SHA-256

| File | SHA-256 |
|---|---|
| `firmware/rev02/single_block/ECB_1block_60nop.coe` | `fbb97dd49fbdb61ac8a5831432c88243fa93e050e64b927ff9b3a3ac8cbc0e73` |
| `firmware/rev02/single_block/ECB_1block_60nop.S` | `9e41f488ea8174254450653df2c8325c78040dcd632929bd34cf3bec4b6f7d66` |
| `firmware/rev02/single_block/ECB_1block_poll.coe` | `9c2b7fcd34f8ae7196b188188427f8dbb3ad75b6b089d6ab2ff27d5d170a81d0` |
| `firmware/rev02/single_block/ECB_1block_poll.S` | `d02bfbaf6fdc77af5a3c46a62ffbf21049186644954a2684f215f99bcecd1cd1` |
| `firmware/rev02/single_block/ECB_1block_9nop.coe` | `a37c6018725abbdb9f47fef5bdf891f16654c717eb39f29076736094a85baf42` |
| `firmware/rev02/single_block/ECB_1block_9nop.S` | `319c1f4ffddd3dbb276f42e7805e5cb80ecdefc46f463e9c35e71a117cc1a061` |
| `firmware/rev02/single_block/CBC_1block_60nop.coe` | `89822eec1635dc5816b7454f3bece68f4963ebe86b1aab553224a2088a930649` |
| `firmware/rev02/single_block/CBC_1block_60nop.S` | `b05ab0141f8882395355a57c3f6e681871938731eb342b61e403443d9b96c764` |
| `firmware/rev02/single_block/CBC_1block_poll.coe` | `de07b66765c4546b9307e7c57e936805eed20eeecd2f1c0d7d89fc3960a409a7` |
| `firmware/rev02/single_block/CBC_1block_poll.S` | `228c21cc437eed8ed7a08330f1e61f20adf757bdc47b61193b9ee8080a90d0ae` |
| `firmware/rev02/single_block/CBC_1block_9nop.coe` | `151113747c64cb438e2b5061574ec606c8aa32c5ef7fca6e47da7793cd5307a7` |
| `firmware/rev02/single_block/CBC_1block_9nop.S` | `3de85f5244f0aa8d2169f7adeef2738fcd1bbfab4ee0ce14c6ffb678a5bbaf75` |
| `firmware/rev02/single_block/CTR_1block_60nop.coe` | `38456dce98ba1b850b561554faa2cdd87d1ab29ac89986b40ab036cd256a5760` |
| `firmware/rev02/single_block/CTR_1block_60nop.S` | `a8c1be02b2aa36b658b03d079a003b7adbdc29abf7fed48a8b70010c67d3ffad` |
| `firmware/rev02/single_block/CTR_1block_poll.coe` | `455e27377f6fe20d8aef3ac764798881df10ca2231025b6636dbf77ab39b7f98` |
| `firmware/rev02/single_block/CTR_1block_poll.S` | `df940144c2d6020b9e07bcb76e354f291dacc424bc8be70dd403b116cb2c178c` |
| `firmware/rev02/single_block/CTR_1block_9nop.coe` | `929f5c6d3360979d83d16ca9baaf3bd01aba581805015183748e9d096ba3345e` |
| `firmware/rev02/single_block/CTR_1block_9nop.S` | `871944424ab742d5ef3aee4fed76b2d09963357d57fb7b0b3b26113ae8477deb` |
| `firmware/rev02/single_block/CFB_1block_60nop.coe` | `3b2ec3f54cd2c156b72f3847087193d5e269fea50d049b1adeb530ef9a9852b7` |
| `firmware/rev02/single_block/CFB_1block_60nop.S` | `41a1469140796e23a414d62fb1b7f6720158f2ddb6de2861363c97b5cf4f60bd` |
| `firmware/rev02/single_block/CFB_1block_poll.coe` | `5fa157abc790b0032767f898f6d920b715deae9588b73d442bc5d17c2a68e5a0` |
| `firmware/rev02/single_block/CFB_1block_poll.S` | `1245153555607c74c6a25e774f2f2f4ca18d50c03d2a4f3dbacdae4c1d5811a6` |
| `firmware/rev02/single_block/CFB_1block_9nop.coe` | `ded4118d43cc46b809ec9da2f8abe89095ff50148fbfc4bf68b669f2cdbda948` |
| `firmware/rev02/single_block/CFB_1block_9nop.S` | `7ed4c707df44d70e6bd5b7e6e2999ddac97360d658df3da0719f5ef37c9b525f` |
| `firmware/rev02/ctr_4kib/CTR_4KiB_poll.coe` | `fe08daed92555e59351add2f64de60174e8a06faf8119815f999b057253696a1` |
| `firmware/rev02/ctr_4kib/CTR_4KiB_poll.S` | `882ac776f75b9289a416886b50c004ee3acde7b7098d3c013eec52fb99bdfeaf` |
| `firmware/rev02/ctr_4kib/CTR_4KiB_9nop.coe` | `f38f648d5829dd5d01f2e079245bd677ec3772a836c68244ca9cf4110b4ea59b` |
| `firmware/rev02/ctr_4kib/CTR_4KiB_9nop.S` | `4278e58047a412acaf500bd0c3ece139bb7246e196acb7c157f81fa1d1f2c97d` |
| `firmware/rev02/four_block_nist/ECB_4block.coe` | `86278283eeda53054bf603e68eefd2add42719e1ea1de8838e98a61297475a0d` |
| `firmware/rev02/four_block_nist/ECB_4block.S` | `1e30d9847c4883b4e63b11d4e5b3acaef6d2069f8ccae9805eff3e3eb500e2fa` |
| `firmware/rev02/four_block_nist/CBC_4block.coe` | `c62ad007d64fa35e88813fef8e18dfd43124dda69ad923e9f89ce57ef63ec76b` |
| `firmware/rev02/four_block_nist/CBC_4block.S` | `9464b055556a7809b1d8beebcda7328f5c4887e230b541f4601710a0824eb61a` |
| `firmware/rev02/four_block_nist/CTR_4block.coe` | `ee092ccee012ed979bb43d683bd0a4cad21b592f7ca7e4c080f2f65969fc1223` |
| `firmware/rev02/four_block_nist/CTR_4block.S` | `14edf8dd5b246495ad2ab808d7fc1e41179b3e0cbff9085ff4f54b62b959e138` |
| `firmware/rev02/four_block_nist/CFB_4block.coe` | `25b9f7ff73da30981b120794ed6c2b78d92fe67cbb54c1ce2e6f1becc4c4b743` |
| `firmware/rev02/four_block_nist/CFB_4block.S` | `4f72731a7a906a84d45a7d4c58c65504131f1ba998d75c78003d148fd309def9` |
