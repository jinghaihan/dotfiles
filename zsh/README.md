# Zsh

Configuration: [.zshrc](./.zshrc) → `~/.zshrc`.

Copy it from the repository root:

```sh
cp zsh/.zshrc ~/.zshrc
```

- Oh My Zsh with the Git plugin and Spaceship prompt.
- Autosuggestions and syntax highlighting.
- Apple Silicon Homebrew paths, nvm, and an Electron download mirror.

## Shell helpers

| Command | Purpose |
| --- | --- |
| `proxy` / `unproxy` | Enable or disable shell, Git, and GitHub SSH proxy settings using port `7890` |
| `repos` / `forks` / `labs` | Navigate to projects under `~/code` |
| `dir` / `backup` / `aux` | Create and enter a directory, back up a file, or search processes |
| `issues` | List open issues across personal GitHub repositories |
| `gitpull` | Pull repositories in the current directory with rebase |
| `orphan` | Replace a branch's history with an initial commit and force-push it |
| `app` | Remove an application's quarantine attribute |
| `finderKit` / `useFinderKit` / `ignoreFinderKit` | Inspect, enable, or disable Finder extensions |
| `dock` | Add a spacer to the Dock |

The configuration expects Oh My Zsh, Spaceship, zsh-autosuggestions,
zsh-syntax-highlighting, and nvm to be installed separately.
