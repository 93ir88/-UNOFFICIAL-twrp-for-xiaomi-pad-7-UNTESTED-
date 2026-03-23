# TWRP Device Tree - Xiaomi Pad 7 (uke)

## Device Specifications
| Feature | Specification |
|---|---|
| Codename | uke |
| Model | 2410CRP4CG |
| Chipset | Snapdragon 7+ Gen 3 (SM7675) |
| Architecture | ARM64 |
| Screen | 2136 x 3200 |
| Android | 14 (SDK 34) |
| Partition | Virtual A/B (VAB) |
| Encryption | FBE (aes-256-xts) |

---

## Build Instructions

### 1. Setup build environment (Ubuntu 20.04/22.04)
```bash
sudo apt install git-core gnupg flex bison build-essential zip curl \
zlib1g-dev libc6-dev-i386 libncurses5 lib32ncurses5-dev x11proto-core-dev \
libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip \
fontconfig python3
```

### 2. Initialize TWRP manifest
```bash
mkdir twrp && cd twrp
repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
repo sync -j$(nproc) --no-clone-bundle --no-tags
```

### 3. Clone this device tree
```bash
git clone https://github.com/YOUR_USERNAME/twrp_device_xiaomi_uke device/xiaomi/uke
```

### 4. Build
```bash
. build/envsetup.sh
lunch twrp_uke-eng
mka vendorbootimage -j$(nproc)
```

### 5. Flash
```bash
fastboot flash vendor_boot out/target/product/uke/vendor_boot.img
```

---

## Notes
- This device uses Virtual A/B — recovery is embedded in `vendor_boot.img`
- You need a prebuilt kernel placed at `device/xiaomi/uke/prebuilt/kernel`
- Get the kernel from the LineageOS build for uke here:
- https://sourceforge.net/projects/irawansprojekt/files/uke/Android%2016/LineageOS/
- Decryption support included but may need vendor crypto libs to fully work

- 
## Credits

- TWRP team for the recovery source
- dodyirawan85 whose LineageOS tree helped as reference
