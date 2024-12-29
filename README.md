# My ZSH config
After using Oh My Zsh, I now prefer to keep things simple and remove bloat by manually installing only the plugins I need day-to-day.

Screenshot:

<img width="869" alt="zshrc-edwardhorsey-theme" src="https://github.com/user-attachments/assets/9822886a-65b0-494d-965c-42217072c4ed" />

Includes:
 - Custom prompt

Git clone the following plugins to `~/.zsh/` folder:
 - [git-prompt.zsh](https://github.com/woefe/git-prompt.zsh): Displays git status in prompt
 - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
 - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

Run
```bash
git clone https://github.com/woefe/git-prompt.zsh ~/.zsh/git-prompt
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlisting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
```

The plugins are loaded via `source` command in `.zshrc` itself.
