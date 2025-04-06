Gotcha! Here's the updated `README.md` with the **Neovim installation requirement** clearly mentioned before cloning:

---

# ⚡ My Neovim Lua Config

This is my personal Neovim configuration using **Lua**, made for an efficient and modern developer workflow.  
Supports both **Linux** and **WSL**, and works great with GUIs like **Neovide** and **Goneovim**.

---

## 🚀 Features

- ⚙️ Built-in LSP support  
- 🤖 Autocompletion & Snippets (via nvim-cmp, LuaSnip)  
- 🌈 Treesitter for enhanced syntax highlighting  
- 💤 Lazy.nvim as plugin manager (fast and minimal)  
- 🔍 UI-based fuzzy search for files, words, grep (via Telescope)  
- 🧠 AI Autocomplete with Codeium  
- 💻 Clean & modern UI (Catppuccin theme, Lualine, Icons)  
- 📁 File tree navigation  
- 🔧 Custom key mappings for fast workflow  
- 🖱️ GUI-compatible: Neovide, Goneovim supported  

---

## 📦 Installation

### ✅ Prerequisites

Make sure you have the following installed:

- **Neovim v0.9+** — _must be installed before cloning this config_  
- Git  
- Curl or Wget  
- Node.js (for Codeium and some plugins)  
- Ripgrep (for grep search)  
- Nerd Fonts (for icons to display properly)  

---

### 🧠 Setup

**Clone into Neovim config directory:**  

For **WSL** or **Linux**:

```
git clone https://github.com/yourusername/nvim-config ~/.config/nvim
```

> Replace `yourusername` with your GitHub username or repo link.

---

### 🧨 Run Neovim

```
nvim
```

On first launch, it will automatically install all required plugins.

---

## 📁 Folder Structure

```
~/.config/nvim/
├── init.lua
├── lua/
│   ├── core/
│   ├── plugins/
│   ├── keymaps.lua
│   └── settings.lua
```

---

## 📸 Screenshots

_Add here if needed (optional)_

---

## 🧪 Tested On

- ✅ WSL (Ubuntu)  
- ✅ Ubuntu/Linux  
- ✅ Neovide  
- ✅ Goneovim  

---

## 📜 License

This config is released under the **MIT License**.

---

Happy Hacking 🚀

--- 

Let me know if you want me to also include Neovim install instructions for WSL/Linux!
