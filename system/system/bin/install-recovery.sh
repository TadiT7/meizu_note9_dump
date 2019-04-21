#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/by-name/recovery:67108864:55ff20ab4bbe4d1713758ddc742712f76a70746f; then
  applypatch  EMMC:/dev/block/by-name/boot:67108864:1c1e0f6f2f581b897603273b89a7f76593a657a5 EMMC:/dev/block/by-name/recovery 55ff20ab4bbe4d1713758ddc742712f76a70746f 67108864 1c1e0f6f2f581b897603273b89a7f76593a657a5:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
