# 🛠️ Dotfiles Setup

> Minimal, fast, and portable dotfiles for Linux and Windows environments.

This repository contains personal configuration files for:
- `bash` (e.g., `.bashrc`)
- `alacritty`, `awesome`, `picom`, `polybar`, `tmux`,`nvim`, etc. under `.config/`

Symlinks are automatically created to your `$HOME` directory using a simple shell script.

---

## 🚀 Quick Start

### 📥 1. Clone the Repository

```bash
git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

---

### 🔗 2. Run the Setup Script

This will:
- Backup existing dotfiles to `~/.dotfiles_backup_<timestamp>`
- Symlink config files to your home directory

```bash
chmod +x setup.sh
./setup.sh
```

---

## 📁 Directory Structure

```text
dotfiles/
├── setup.sh                # Main setup script
├── .bashrc                 # Bash configuration
└── .config/
    ├── alacritty/
    ├── awesome/
    ├── picom/
    ├── polybar/
    ├── nvim/
    └── tmux/
```

---

## 🔧 Requirements

Ensure you have:
- `git`
- `bash`
- Any dependencies required by the tools you use (e.g., `alacritty`, `polybar`)

---

## ♻️ Re-Runnability

The setup script can be safely re-run:
- It backs up existing configs
- It re-symlinks updated files

---

## 📌 Notes

- Only the files you include in `setup.sh` will be symlinked
- You can extend `setup.sh` to support other shells, editors, or platforms

---

## 📚 License

This dotfiles setup is free to use and modify for your own needs.

