# 💤 LazyVim — Guia de Comandos

> Referência rápida para praticar os atalhos do dia a dia.

---

## 🖥️ Terminal

| Ação | Comando |
|---|---|
| Abrir terminal flutuante | `<leader>ft` ou `<C-/>` |
| Terminal no diretório atual | `<leader>fT` |
| Fechar/toggle terminal | `<C-/>` |

---

## 🔍 LSP — Navegação de Código

| Ação | Comando |
|---|---|
| **Ir para definição** | `gd` |
| Ir para declaração | `gD` |
| Ir para implementação | `gI` |
| Ver referências | `gr` |
| Ver tipo da variável | `gy` |
| Hover / documentação | `K` |
| Renomear símbolo | `<leader>cr` |
| Code actions | `<leader>ca` |
| Diagnósticos da linha | `<leader>cd` |
| Próximo diagnóstico | `]d` |
| Diagnóstico anterior | `[d` |

---

## 🔎 Pesquisa no Projeto

| Ação | Comando |
|---|---|
| **Buscar arquivos** | `<leader><space>` ou `<leader>ff` |
| **Grep no projeto** | `<leader>/` ou `<leader>sg` |
| Buscar no buffer atual | `<leader>sb` |
| Buscar símbolo LSP | `<leader>ss` |
| Buffers abertos | `<leader>,` |
| Comandos | `<leader>:` |
| Keymaps | `<leader>sk` |

---

## ✏️ Find & Replace

| Ação | Comando |
|---|---|
| Replace no buffer | `:%s/old/new/g` |
| **Find & replace no projeto** | `<leader>sr` |
| Replace palavra sob cursor | `<leader>sR` |

---

## 🐛 DAP — Debug

| Ação | Comando |
|---|---|
| **Iniciar / continuar** | `<F5>` |
| Parar | `<F6>` |
| Step over | `<F10>` |
| Step into | `<F11>` |
| Step out | `<S-F11>` |
| Toggle breakpoint | `<leader>db` |
| Breakpoint condicional | `<leader>dB` |
| Abrir DAP UI | `<leader>du` |
| Inspecionar variável | `<leader>de` |
| Listar breakpoints | `<leader>dl` |

> Perfis configurados: **Launch NestJS** e **Attach to NestJS** (Node.js via `node-debug2-adapter`).

---

## 🌳 Neo-tree — File Explorer

| Ação | Comando |
|---|---|
| Abrir / fechar explorer | `<leader>e` |
| Explorer no dir do arquivo atual | `<leader>E` |
| Novo arquivo | `a` |
| Deletar | `d` |
| Renomear | `r` |
| Copiar caminho | `y` |

---

## 🔀 Git

| Ação | Comando |
|---|---|
| Blame da linha (full) | `<leader>gB` |
| Preview do hunk | `<leader>gp` |
| Toggle git blame inline | `<leader>gb` |
| Stage hunk | `<leader>ghs` |
| Reset hunk | `<leader>ghr` |

---

## 💡 Dicas

- `<leader>` = **Espaço**
- Use `<leader>sk` dentro do Neovim para buscar qualquer keymap em tempo real.
- Use `K` em cima de qualquer símbolo para ver a documentação sem sair do editor.
