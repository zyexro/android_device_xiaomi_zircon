# Device tree for Redmi Note 13 Pro+ 5G (zircon)

LineageOS device tree generated from the latest stock HyperOS 3 ROM.

## Device

| Item | Value |
| --- | --- |
| Marketing name | Redmi Note 13 Pro+ 5G |
| Codename | zircon |
| SoC | MediaTek Dimensity 7200 Ultra (MT6886) |
| Platform | mt6886 |
| Architecture | arm64 (cortex-a55) |
| Display | 1220 x 2712 OLED, 120 Hz, density 480 |
| RAM / storage | LPDDR5X / UFS 4.0 |
| Camera | 200 MP main (S5KHP3) + UW + macro + 16 MP front |
| Fingerprint | Goodix under-display |
| Battery | 5000 mAh, 120 W wired |
| Shipping API | 33 (Android 13) |
| Current stock | HyperOS 3 / Android 16 |

## Stock ROM used

| Item | Value |
| --- | --- |
| Region | China (CN) |
| Version | OS3.0.305.0.WNOCNXM |
| Android | 16 (BP2A.250605.031.A3) |
| Security patch | 2026-08-01 |
| Type | Recovery / Fastboot |
| Package (recovery) | zircon-ota_full-OS3.0.305.0.WNOCNXM-user-16.0-eff1e6a7f9.zip |
| Package (fastboot) | zircon_images_OS3.0.305.0.WNOCNXM_20260923.0000.00_16.0_cn_cf641c519f.tgz |
| Released | 2026-09-23 (fastboot) / 2026-09-29 (recovery) |

Download mirrors: https://xmfirmwareupdater.com/hyperos/zircon/stable/OS3.0.305.0.WNOCNXM/

Other current regional builds:

- Global: OS3.0.303.0.WNOMIXM
- EEA: OS3.0.303.0.WNOEUXM
- India: OS3.0.301.0.WNOINXM

## Layout

```
device/xiaomi/zircon   this tree
vendor/xiaomi/zircon   proprietary blobs / firmware
```

## Extract blobs from stock

Place the extracted stock dump (or a connected device) next to a Lineage extract-utils tree, then:

```
# From an extracted ROM dump
./extract-files.py /path/to/extracted-rom

# Or from a device over adb
./extract-files.py -d zircon
```

Regenerate vendor makefiles after extraction:

```
./setup-makefiles.py
```

Firmware images listed in `proprietary-firmware.txt` are pulled from the same dump.

## Build

```
# Sync Lineage (or compatible ROM) with this tree at:
#   device/xiaomi/zircon
#   vendor/xiaomi/zircon

source build/envsetup.sh
lunch lineage_zircon-userdebug
m bacon
```

## Notes

- Virtual A/B with vendor ramdisk, init_boot header v4, boot header v4.
- Super partition 9126805504 bytes, dynamic groups: odm, odm_dlkm, product, system, system_dlkm, system_ext, vendor, vendor_dlkm.
- Kernel source expected at `kernel/xiaomi/mt6886` with GKI 5.15 (`mgk_64_k515`).
- Vendor blobs are not committed here. Extract them from OS3.0.305.0.WNOCNXM before building.
