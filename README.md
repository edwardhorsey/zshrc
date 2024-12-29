# My ZSH config
After using Oh My Zsh for some time, I now prefer to keep things simple and just manually install the plugins I use day-to-day.

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
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
```

The plugins are loaded via `source` command in `.zshrc` itself.
