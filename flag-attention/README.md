Scripts to prefix a tmux window with `!` whenever agent needs my attention.

## Claude Code

In `~/.claude/settings.json`:
```json
{
  "hooks": {
    "Notification": [
      {
        "matcher": "",
        "hooks": [
          {
            "type": "command",
            "command": "bash ~/.claude/scripts/flag-attention.sh"
          }
        ]
      }
    ],
    "UserPromptSubmit": [
      {
        "matcher": "",
        "hooks": [
          {
            "type": "command",
            "command": "bash ~/.claude/scripts/clear-attention.sh"
          }
        ]
      }
    ]
  }
}
```
