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

Both themes use Geist for the interface and Geist Mono for code. Install them
with Homebrew before importing a theme:

```sh
brew install --cask font-geist font-geist-mono
```

- [Light](./light.txt)
- [Dark](./dark.txt)
