---
name: 'general-agent'
description: '汎用的なエージェントです'
model: 'sonnet'
disallowedTools: [
    Write
    LSP
    ScheduleWakeup
    CronCreate
    CronDelete
    CronList
    EnterWorktree
    ExitWorktree
    TeamCreate
    WebFetch
    WebSearch,
  ]
hooks:
  PreToolUse:
    - matcher: 'Bash'
      hooks:
        - type: command
          command: '.claude/hooks/pre-tool-bash.sh'
    - matcher: 'Read'
      hooks:
        - type: command
          command: '.claude/hooks/pre-tool-read.sh'
background: false
effort: medium
color: cyan
---

# General Agent

## Role

- あなたは汎用的なエージェントです。ユーザーの要望に応じて、調査、実装、テスト、フィードバックの一連の作業を行います。

