# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# -----------------------------------------------------------------
# Altair ROM OTA update package

ALTAIR_TARGET_PACKAGE := $(PRODUCT_OUT)/Altair-$(ALTAIR_VERSION).zip

.PHONY: altair
altair: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(ALTAIR_TARGET_PACKAGE)
	$(hide) $(MD5SUM) $(ALTAIR_TARGET_PACKAGE) > $(ALTAIR_TARGET_PACKAGE).md5sum
	@echo " "
	@echo " "
	@echo " "
	@echo -e ${CL_WHT}"═══════════════════════════════════════════════════════════════════════════"${CL_RST}
	@echo -e ${CL_BLU}"  █████╗ ██╗  ████████╗ █████╗ ██╗██████╗     ██████╗  ██████╗ ███╗   ███╗ "${CL_RST}
	@echo -e ${CL_BLU}" ██╔══██╗██║  ╚══██╔══╝██╔══██╗██║██╔══██╗    ██╔══██╗██╔═══██╗████╗ ████║ "${CL_RST}
	@echo -e ${CL_BLU}" ███████║██║     ██║   ███████║██║██████╔╝    ██████╔╝██║   ██║██╔████╔██║ "${CL_RST}
	@echo -e ${CL_BLU}" ██╔══██║██║     ██║   ██╔══██║██║██╔══██╗    ██╔══██╗██║   ██║██║╚██╔╝██║ "${CL_RST}
	@echo -e ${CL_BLU}" ██║  ██║███████╗██║   ██║  ██║██║██║  ██║    ██║  ██║╚██████╔╝██║ ╚═╝ ██║ "${CL_RST}
	@echo -e ${CL_BLU}" ╚═╝  ╚═╝╚══════╝╚═╝   ╚═╝  ╚═╝╚═╝╚═╝  ╚═╝    ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝ "${CL_RST}
	@echo -e ${CL_WHT}"═══════════════════════════════════════════════════════════════════════════"${CL_RST}
	@echo -e ${CL_WHT}" Path:"${CL_BOLD}${CL_GRN} $(PRODUCT_OUT)${CL_RST}
	@echo -e ${CL_WHT}" File:"${CL_BOLD}${CL_GRN} Altair-$(ALTAIR_VERSION)${CL_RST}
	@echo -e ${CL_WHT}"  MD5:"${CL_BOLD}${CL_GRN}" `cat $(ALTAIR_TARGET_PACKAGE).md5sum | cut -d ' ' -f 1`"${CL_RST}
	@echo -e ${CL_WHT}" Size:"${CL_BOLD}${CL_GRN}" `ls -lah $(ALTAIR_TARGET_PACKAGE) | cut -d ' ' -f 5`"${CL_RST}
	@echo -e ${CL_WHT}"═══════════════════════════════════════════════════════════════════════════"${CL_RST}
	@echo " "

