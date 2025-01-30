#!/bin/bash
for script in /scripts/*.sh; do
  bash "$script"
done
bash /scripts/add_components.sh
