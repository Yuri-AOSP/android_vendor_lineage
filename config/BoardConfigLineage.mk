# SPDX-FileCopyrightText: 2017-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

# Recovery
BOARD_USES_FULL_RECOVERY_IMAGE ?= true

include vendor/lineage/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
    include hardware/qcom-caf/common/BoardConfigQcom.mk
endif

# Vie: policy for the system services we add on top of Lineage
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    vendor/lineage/sepolicy/private

include vendor/lineage/config/BoardConfigSoong.mk
