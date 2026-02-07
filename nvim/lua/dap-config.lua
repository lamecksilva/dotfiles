local dap = require('dap')

-- Configuração para Node.js/NestJS
dap.adapters.node2 = {
  type = 'executable',
  command = 'node',
  args = {os.getenv('HOME') .. '/.local/share/nvim/mason/packages/node-debug2-adapter/out/src/nodeDebug.js'},
}

dap.configurations.typescript = {
  {
    name = 'Debug NestJS',
    type = 'node2',
    request = 'launch',
    program = '${workspaceFolder}/node_modules/@nestjs/cli/bin/nest.js',
    args = {'start', '--debug', '--watch'},
    cwd = '${workspaceFolder}',
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
    restart = true,
    port = 9229,
    envFile = '${workspaceFolder}/.env.local',
    outFiles = {'${workspaceFolder}/.build/**/*.js'},
    skipFiles = {'<node_internals>/**'},
  },
  {
    name = 'Attach to NestJS',
    type = 'node2',
    request = 'attach',
    port = 9229,
    restart = true,
    sourceMaps = true,
    outFiles = {'${workspaceFolder}/.build/**/*.js'},
    skipFiles = {'<node_internals>/**'},
  }
}

-- Keymaps para DAP
vim.keymap.set('n', '<F5>', dap.continue)
vim.keymap.set('n', '<F10>', dap.step_over)
vim.keymap.set('n', '<F11>', dap.step_into)
vim.keymap.set('n', '<F12>', dap.step_out)
vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint)
vim.keymap.set('n', '<leader>B', function() dap.set_breakpoint(vim.fn.input('Breakpoint condition: ')) end)
