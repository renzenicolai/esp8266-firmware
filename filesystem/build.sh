#!/bin/bash
echo "Generating filesystem images..."
for D in *; do
  if [ -d "${D}" ]; then
    echo -e "\n\nBuilding '${D}'..."
    cd "${D}"
    find . | ../../mkespfsimage/mkespfsimage > ../"${D}".espfs
    cd ..
  fi
done

echo -e "---DONE---\n"

du -h *.espfs
