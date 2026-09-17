#!/bin/bash
set -euo pipefail

INPUT=$(cat)
COMMAND=$(echo "$INPUT" | jq -r '.tool_input.command // empty')

DENIED_FILES=(
  ".env"
  ".env.production"
)

for denied_file in "${DENIED_FILES[@]}"; do
  if echo "$COMMAND" | grep -Fq -- "$denied_file"; then
    jq -n --arg cmd "$COMMAND" --arg pattern "$denied_file" '{
      hookSpecificOutput: {
        hookEventName: "PreToolUse",
        permissionDecision: "deny",
        permissionDecisionReason: ("禁止されたファイルへのアクセスを検出しました: " + $pattern + " Command: " + $cmd)
      }
    }'
    exit 2
  fi
done

CONFIG_FILE=".claude/vetol.json"

if [ ! -f "$CONFIG_FILE" ]; then
  jq -n --arg cfg "$CONFIG_FILE" '{
    hookSpecificOutput: {
      hookEventName: "PreToolUse",
      permissionDecision: "deny",
      permissionDecisionReason: ("vetol config not found: " + $cfg)
    }
  }'
  exit 2
fi

if vetol --config "$CONFIG_FILE" "$COMMAND" >/dev/null 2>&1; then
  exit 0
fi

jq -n --arg cmd "$COMMAND" '{
  hookSpecificOutput: {
    hookEventName: "PreToolUse",
    permissionDecision: "deny",
    permissionDecisionReason: ("このコマンドはプロジェクトポリシーで禁止されています。実行できないことをユーザーに通知してください。 Command: " + $cmd)
  }
}'

exit 2
