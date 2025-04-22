# zsh-alias-fzf

⚡ A minimal Zsh plugin that uses `fzf` to fuzzy-find, preview, and run your defined aliases.

---

## 🎥 Demo

<!-- Place your GIF here -->
![demo](path/to/your-demo.gif)

---

## ✨ Features

- Interactive fuzzy search through all defined aliases
- Preview the full command before selecting
- Execute the selected alias directly from the terminal
- Lightweight and fast — just one function and one optional keybinding

---

## 🚀 Installation

### With [Zinit](https://github.com/zdharma-continuum/zinit):

Add the following line to your `.zshrc`:

```zsh
zinit light yourname/zsh-alias-fzf
```

Then reload your shell:

```bash
source ~/.zshrc
```

---

## 🛠️ Usage

Once installed, run:

```bash
alias-fzf
```

Use your arrow keys to scroll, type to filter, and press **Enter** to run the selected alias.

---

## 🎹 Optional: Keybinding

To launch `alias-fzf` using a keyboard shortcut (e.g., `Alt+A`), this plugin binds it automatically:

```zsh
bindkey '^[a' alias_fzf_widget
```

If you prefer a different shortcut, feel free to rebind it in your `.zshrc`.

---

## 📦 Requirements

- [fzf](https://github.com/junegunn/fzf) installed and available in your `$PATH`

---

## 📂 File Structure

```bash
.
├── alias-fzf.plugin.zsh   # main plugin logic
├── README.md              # this file
└── ...                    # (add your demo GIF and LICENSE here)
```

---

## 🧠 Why?

Shell aliases are powerful — but easy to forget. `alias-fzf` gives you an interactive way to browse and execute them without remembering exact names.

---

## 📝 License

MIT © You
