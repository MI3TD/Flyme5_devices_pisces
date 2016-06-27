#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 13613056 77c21332cf2b12d44c97c0ce124184b87b5513c5 8204288 33a9f204ad4e522204db7d28550b3aea81379709
fi

if ! applypatch -c EMMC:/dev/block/platform/sdhci-tegra.3/by-name/recovery:13613056:77c21332cf2b12d44c97c0ce124184b87b5513c5; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/sdhci-tegra.3/by-name/boot:8204288:33a9f204ad4e522204db7d28550b3aea81379709 EMMC:/dev/block/platform/sdhci-tegra.3/by-name/recovery 77c21332cf2b12d44c97c0ce124184b87b5513c5 13613056 33a9f204ad4e522204db7d28550b3aea81379709:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
