#!/bin/bash
echo "Generating filesystem images..."
for D in *; do
  if [ -d "${D}" ]; then
    echo -e "\nBuilding '${D}'..."
    if [ ! -f "${D}.gzlist" ]; then
      arg=""
    else
      arg=$(cat "${D}.gzlist")
    fi
    cd "${D}"
    if [ -z "$arg" ]; then
      result=$(find . | ../mkespfsimage > ../"${D}".espfs)
    else
      result=$(find . | ../mkespfsimage -g "$arg" > ../"${D}".espfs)
    fi
    cd ..
  fi
done

echo -e "---DONE---\n"

du -h *.espfs
