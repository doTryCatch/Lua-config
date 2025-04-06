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

![Screenshot (383)](https://github.com/user-attachments/assets/1dc0ae83-d329-4c1e-8b67-175f97215b8a)
![Screenshot (384)](https://github.com/user-attachments/assets/ebf9defa-fed8-457e-9e9b-d75f890bc150)
![Screenshot (385)](https://github.com/user-attachments/assets/6a6e3887-cf96-4d00-abfe-0bb3dfbe165a)
![Screenshot (386)](https://github.com/user-attachments/assets/a0c8b94e-7f9e-44ec-9499-d6d05c34894b)
![Screenshot (387)](https://github.com/user-attachments/assets/01c45507-8ac0-41d0-b4ac-0ec860c4d400)
![Screenshot (388)](https://github.com/user-attachments/assets/21d65096-0baa-42ca-af99-ec48e2ad8d62)

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
