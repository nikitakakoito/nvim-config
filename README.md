# ⚡ Neovim Config

A modern, fast, and highly configurable Neovim setup built with **Lua** and **lazy.nvim**. Designed for Go, Python, JavaScript, Rust, and more.

**Version:** nvim 0.12.2+

---

## 🎯 Features

### **Core Plugins**
- 🚀 **[blink.cmp](https://github.com/saghen/blink.cmp)** — Fast, Rust-based autocompletion (replaces nvim-cmp)
- 🔍 **[fzf-lua](https://github.com/ibhagwan/fzf-lua)** — Blazing-fast fuzzy finder with preview
- 🎨 **[snacks.nvim](https://github.com/folke/snacks.nvim)** — UI utilities: smooth scroll, indent guides, notifier, explorer, lazygit
- 📝 **[noice.nvim](https://github.com/folke/noice.nvim)** — Beautiful command palette and messages
- 🌳 **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** — Syntax highlighting and text objects
- 🔌 **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** — Language server integration
- 📦 **[mason.nvim](https://github.com/mason-org/mason.nvim)** — Package manager for LSP, formatters, linters

### **Languages Supported**
- **Go** — gopls with full inlay hints, code actions, and custom analyses
- **Lua** — lua_ls with nvim API support via lazydev
- **Python** — pyright
- **JavaScript/TypeScript** — ts_ls
- **Bash** — bashls
- **Zig** — zls
- **JSON, YAML, Markdown** — with LSP and formatting

### **Editor Features**
- ⌨️ **which-key** — Interactive keymap discovery
- 🔄 **conform.nvim** — Auto-formatting on save
- 📱 **toggleterm** — Integrated terminal
- 💾 **persistence.nvim** — Session management
- 📊 **lualine** — Beautiful statusline
- 🎨 **tokyonight** — Modern color scheme
- 🌈 **rainbow-delimiters** — Colored bracket pairs
- 🔎 **gitsigns** — Git blame and diff signs
- 🎯 **mini.ai** — Smart text objects
- ✏️ **LuaSnip** — Snippet engine with VS Code snippets

---

## 📋 System Requirements

### **Required**
- **Neovim** ≥ 0.12.2
- **git** (for lazy.nvim and plugins)
- **node** ≥ 16 (for prettier and some LSPs)
- **Python** ≥ 3.8 (for some tools)

### **Build Tools**
- **make** (for treesitter compilation)
- **gcc/clang** (for native modules)
- **cargo** (Rust, optional but recommended for some tools)

### **Must-Have CLI Tools**
| Tool | Purpose | Install |
|------|---------|---------|
| **fzf** | Fuzzy finder | `brew install fzf` / `apt install fzf` |
| **ripgrep (rg)** | Fast grep, used in live_grep | `brew install ripgrep` / `apt install ripgrep` |
| **fd** | Fast find alternative | `brew install fd` / `apt install fd-find` |
| **tree-sitter-cli** | Treesitter parser management | `npm install -g tree-sitter-cli` |
| **stylua** | Lua formatter | `brew install stylua` / `cargo install stylua` |
| **prettier** | JS/TS/JSON/YAML formatter | `npm install -g prettier` |
| **black** | Python formatter | `pip install black` |
| **shfmt** | Shell formatter | `brew install shfmt` / `apt install shfmt` |
| **jq** | JSON processor (optional) | `brew install jq` / `apt install jq` |

### **Language-Specific**
| Language | LSP | How to Install |
|----------|-----|----------------|
| **Go** | gopls | `go install github.com/golang/tools/gopls@latest` |
| **Lua** | lua_ls | Auto-installed via mason |
| **Python** | pyright | `pip install pyright` or auto-installed via mason |
| **JavaScript/TypeScript** | ts_ls | Auto-installed via mason |
| **Bash** | bashls | Auto-installed via mason |
| **Zig** | zls | `brew install zls` or build from source |
| **JSON** | jsonls | Auto-installed via mason |
| **YAML** | yamlls | Auto-installed via mason |

---

## 🚀 Installation

### **1. Install Dependencies**

**macOS:**
```bash
brew install neovim fzf ripgrep fd tree-sitter-cli stylua prettier
pip install black
brew install shfmt
```

**Ubuntu/Debian:**
```bash
sudo apt update
sudo apt install neovim fzf ripgrep fd-find build-essential
npm install -g tree-sitter-cli stylua prettier
pip install black
sudo apt install shfmt
```

**Arch Linux:**
```bash
sudo pacman -S neovim fzf ripgrep fd tree-sitter-cli stylua prettier
pip install black
sudo pacman -S shfmt
```

### **2. Install Neovim Config**

**Option A: Clone directly**
```bash
git clone https://github.com/nikitakakoito/nvim-config ~/.config/nvim
cd ~/.config/nvim
git submodule update --init --recursive
```

**Option B: Add as submodule to dotfiles**
```bash
cd ~/dotfiles
git submodule add https://github.com/nikitakakoito/nvim-config.git dot_config/nvim
git submodule update --init --recursive
```

### **3. First Launch**

```bash
nvim
```

On first launch:
1. ✅ lazy.nvim will bootstrap automatically
2. ✅ All plugins will install
3. ✅ Mason will install LSPs and formatters (may take 1-2 minutes)
4. ✅ Treesitter will install parsers

**Verify everything worked:**
```vim
:Lazy       # Check plugin status
:Mason      # Check LSP/formatter status
:TSInstall go lua python javascript typescript bash json yaml  # Install parsers
```

---

## ⌨️ Keymaps

### **Navigation**
| Key | Action |
|-----|--------|
| `H` | Go to start of line (like `^`) |
| `L` | Go to end of line (like `$`) |
| `<leader>h/j/k/l` | Navigate between windows |
| `<leader>e` | Open file explorer |
| `<leader>t` | Toggle terminal |

### **Find & Search**
| Key | Action |
|-----|--------|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep (search text) |
| `<leader>fb` | Find buffers |
| `<leader>fh` | Find help tags |
| `<leader>fr` | Find LSP references |
| `<leader>fs` | Find LSP symbols |

### **Git**
| Key | Action |
|-----|--------|
| `<leader>gf` | Find git files |
| `<leader>gc` | Git commits |
| `<leader>gb` | Git branches |
| `<leader>gs` | Git status |
| `<leader>gg` | Open lazygit |

### **LSP & Refactoring**
| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gi` | Go to implementation |
| `gr` | Find references |
| `gy` | Go to type definition |
| `gD` | Go to declaration |
| `K` | Hover documentation |
| `<leader>rn` | Rename symbol |
| `<leader>ra` | Code action |
| `<leader>rd` | Show diagnostics |
| `<leader>rf` | Format file |

### **Go-Specific**
| Key | Action |
|-----|--------|
| `<leader>Gt` | Run tests |
| `<leader>Gtf` | Run test function |
| `<leader>Gc` | Show coverage |
| `<leader>Gi` | Implement interface |
| `<leader>Gfs` | Fill struct |
| `<leader>Gat` | Add struct tags |

### **Windows & Splits**
| Key | Action |
|-----|--------|
| `<leader>wv` | Vertical split |
| `<leader>ws` | Horizontal split |
| `<leader>we` | Equalize splits |
| `<leader>wx` | Close window |
| `<leader>wo` | Close other windows |

### **UI & Toggles**
| Key | Action |
|-----|--------|
| `<leader>?` | Show buffer keymaps |
| `<c-w><space>` | Window hydra mode |
| `<Esc>` | Clear search highlight |
| `<leader>u` | UI options |

### **Snippets** (LuaSnip)
| Key | Action |
|-----|--------|
| `<Tab>` | Expand snippet or jump to next field |
| `<S-Tab>` | Jump to previous field |

---

## 🏗️ Architecture

### **Directory Structure**
```
~/.config/nvim/
├── init.lua                    # Entry point
├── lua/
│   ├── config/
│   │   ├── lazy.lua           # lazy.nvim bootstrap
│   │   ├── options.lua        # Neovim options
│   │   ├── keymaps.lua        # Core keymaps + autoload
│   │   ├── autocmds.lua       # Autocommands
│   │   ├── languages.lua      # Single source of truth for all languages
│   │   └── keymaps/           # Individual keymap files (auto-loaded)
│   │       ├── lsp_keymap.lua
│   │       ├── fzf_keymap.lua
│   │       ├── git_keymap.lua
│   │       ├── go_keyTable.lua
│   │       └── ...
│   └── plugins/
│       ├── ui/                # UI plugins (lualine, alpha, snacks, etc.)
│       ├── editor/            # Editor plugins (which-key, comments, pairs)
│       ├── lsp/               # LSP, completion, snippets
│       ├── navigation/        # fzf-lua
│       ├── treesitter/        # Treesitter and extensions
│       └── tools/             # Utilities (formatter, gitsigns, terminal)
```

### **languages.lua — Core Architecture**

The magic is in **`lua/config/languages.lua`**. It's a single file that defines all languages with their:
- **Parsers** → sent to treesitter
- **LSP Server** → sent to lspconfig & mason
- **Formatter** → sent to conform & mason
- **LSP Config** → applied to each language server

```lua
M.list = {
  go = {
    parsers = { "go", "gomod", "gosum", "gowork" },
    lsp = "gopls",
    config = { settings = { gopls = { ... } } },
  },
  lua = { ... },
  python = { ... },
  -- Add new language here!
}
```

**Why this is cool:**
- Add a new language? Just add one entry to `languages.lua`
- mason automatically picks it up via `M.lsp_servers()`
- treesitter automatically picks it up via `M.parsers()`
- conform automatically picks it up via `M.formatters()`
- lspconfig automatically configures it

---

## 🎨 Customization

### **Add a New Language**

1. **Edit `lua/config/languages.lua`:**
```lua
M.list = {
  -- ... existing languages ...
  
  rust = {
    parsers = { "rust" },
    lsp = "rust_analyzer",
    formatter = "rustfmt",
    config = {
      settings = {
        ["rust-analyzer"] = {
          checkOnSave = { command = "clippy" },
        }
      }
    },
  },
}
```

2. **Restart Neovim**
   - Mason will auto-install `rust_analyzer`
   - Treesitter will auto-install `rust` parser
   - conform will auto-use `rustfmt` for formatting

### **Change Color Scheme**

Edit `lua/plugins/ui/theme.lua`:
```lua
-- Try other tokyonight styles:
style = "moon",  -- options: "storm", "moon", "night", "day"
```

Or replace with another theme:
```lua
return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("catppuccin")
  end,
}
```

### **Adjust Keymaps**

Each category has its own file in `lua/config/keymaps/`:
- `lsp_keymap.lua` — LSP bindings
- `fzf_keymap.lua` — Finder bindings
- `git_keymap.lua` — Git bindings
- Add a new file for your custom keymaps!

### **Disable a Plugin**

In any plugin file, add `enabled = false`:
```lua
return {
  "some/plugin",
  enabled = false,  -- Won't load
}
```

---

## 🔧 Troubleshooting

### **Problem: LSP not working**

```vim
:LspInfo
:Mason
```

Check if your language server is installed. If not:
```vim
:MasonInstall gopls    # for Go
:MasonInstall lua_ls   # for Lua
```

### **Problem: Treesitter highlighting broken**

```vim
:TSInstall <language>
:TSUpdate
```

### **Problem: Formatters not working**

```vim
:ConformInfo
```

Make sure tool is in `languages.lua` and installed:
```bash
npm install -g prettier  # for JS/TS
pip install black        # for Python
```

### **Problem: fzf not finding files**

Make sure `fd` is installed:
```bash
brew install fd
```

Or use `rg` (ripgrep) which is built-in:
```bash
brew install ripgrep
```

### **Problem: Slow startup**

Check lazy.nvim startup time:
```vim
:Lazy profile
```

Disable unused plugins in their respective files by adding `enabled = false`.

---

## 📚 Learning Resources

- **Neovim**: https://neovim.io/doc/
- **Lua**: https://www.lua.org/manual/5.1/
- **lazy.nvim**: https://github.com/folke/lazy.nvim
- **LSP**: https://neovim.io/doc/user/lsp.html
- **Treesitter**: https://tree-sitter.github.io/tree-sitter/

---

## 🎯 What's Included

- **50+ plugins** carefully selected and configured
- **1400+ lines** of well-organized Lua code
- **14 language servers** auto-configured
- **10+ CLI tools** integrated
- **Custom architecture** with languages.lua for easy scaling

---

## 📝 License

MIT - feel free to fork, modify, and share!

---

## 👤 Author

**kathlind** — [GitHub](https://github.com/nikitakakoito)

If you find this useful, consider starring the repo! ⭐

---

## 🤝 Contributing

Found a bug or have a suggestion? Open an issue or submit a PR!

---

## 📦 Powered By

- [lazy.nvim](https://github.com/folke/lazy.nvim) — Plugin manager
- [blink.cmp](https://github.com/saghen/blink.cmp) — Autocompletion
- [fzf-lua](https://github.com/ibhagwan/fzf-lua) — Finder
- [snacks.nvim](https://github.com/folke/snacks.nvim) — UI utilities
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) — Syntax
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) — LSP
- [conform.nvim](https://github.com/stevearc/conform.nvim) — Formatting

---

**Happy coding! 🚀**
