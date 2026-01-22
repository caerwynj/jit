#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -gt 0 ]; then
  files=("$@")
else
  shopt -s nullglob
  files=( *.s )
fi

if [ "${#files[@]}" -eq 0 ]; then
  echo "No .s files found."
  exit 1
fi

declare -A seen_global

for f in "${files[@]}"; do
  if [ ! -f "$f" ]; then
    echo "Skip missing file: $f" >&2
    continue
  fi

  declare -A seen=()
  while IFS= read -r instr; do
    seen["$instr"]=1
  done < <(
    awk '
      BEGIN{
        split("entry desc var word string module link ldts source", skip);
        for(i in skip) s[skip[i]]=1
      }
      {
        sub(/^[ \t]+/, "", $0)
        if($0 == "" || $0 ~ /^#/) next
        instr = $1
        if(instr in s) next
        print instr
      }
    ' "$f"
  )

  uniques=()
  for instr in "${!seen[@]}"; do
    if [ -z "${seen_global["$instr"]+x}" ]; then
      uniques+=( "$instr" )
    fi
  done

  echo "$f:"
  if [ "${#uniques[@]}" -eq 0 ]; then
    echo "  (none)"
  else
    printf '%s\n' "${uniques[@]}" | sort | sed 's/^/  /'
  fi

  for instr in "${!seen[@]}"; do
    seen_global["$instr"]=1
  done
done
