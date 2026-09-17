#!/usr/bin/env bash
set -euo pipefail

deny() {
  local reason="$1"

  jq -n \
    --arg reason "$reason" \
    '{
      hookSpecificOutput: {
        hookEventName: "PreToolUse",
        permissionDecision: "deny",
        permissionDecisionReason: $reason
      }
    }'

  exit 2
}

INPUT="$(cat)"

FILE_PATH=$(echo "$INPUT" | jq -r '.tool_input.file_path')

case "$FILE_PATH" in
node_modules/* | */node_modules/* | \
  dist/* | */dist/* | \
  build/* | */build/*)
  deny "Reading blocked: $FILE_PATH"
  ;;
esac

if [[ -f "$FILE_PATH" ]]; then
  LINES=$(wc -l <"$FILE_PATH")

  if ((LINES > 2000)); then
    deny "$(
      cat <<EOF
Blocked large file: $FILE_PATH ($LINES lines)

Never read the entire file.
Read only the relevant section.

Use:
- grep -n to find symbols/classes
- sed -n START,ENDp to read a small range
- head for the beginning of the file
- tail for the end of the file

Examples:
  rg 'UserMailer' app/
  grep -n 'def perform' app/jobs/example_job.rb
  sed -n '120,180p' $FILE_PATH
  head -100 $FILE_PATH
  tail -100 $FILE_PATH
EOF
    )"
  fi
fi
