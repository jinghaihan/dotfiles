# Codex

## Proxy

Copy [.env](./.env) to the Codex home directory:

| Platform | Destination |
| --- | --- |
| macOS | `~/.codex/.env` |
| Windows (native) | `%USERPROFILE%\.codex\.env` |
| Windows (WSL backend) | `~/.codex/.env` inside WSL |

If `CODEX_HOME` is set, place `.env` in that directory instead.

The proxy uses `http://127.0.0.1:7890` for HTTP and HTTPS. Adjust the address to
match the proxy available on each machine, then fully quit and reopen Codex.

## Appearance

- [Light](./light.txt)
- [Dark](./dark.txt)
