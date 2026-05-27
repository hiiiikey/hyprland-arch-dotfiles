#!/usr/bin/env bash

if acpi -b | grep -q 'Battery 0: Discharging'; then
  systemctl suspend
fi
