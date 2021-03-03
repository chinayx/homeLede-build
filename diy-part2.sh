#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
sed -i 's/192.168.1.1/192.168.123.254/g' package/base-files/files/bin/config_generate
#Modify target to kernel 5.4
sed -i 's/4.19/5.4/g' target/linux/armvirt/Makefile
sed -i 's/=x86_64/=all/g' package/feeds/homeclash/luci-app-openclash/Makefile
sed -i 's/\@TARGET_x86_64//g' package/feeds/homeclash/luci-app-openclash/Makefile
