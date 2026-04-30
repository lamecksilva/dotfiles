return {
  "mfussenegger/nvim-dap",
  opts = function()
    local dap = require("dap")

    -- -- Node.js adapter
    -- dap.adapters.node2 = {
    --   type = "executable",
    --   command = "node",
    --   args = { vim.fn.stdpath("data") .. "/mason/packages/node-debug2-adapter/out/src/nodeDebug.js" },
    -- }
    --
    -- -- NestJS configuration
    -- dap.configurations.typescript = {
    --   {
    --     name = "Launch NestJS",
    --     type = "node2",
    --     request = "launch",
    --     program = "${workspaceFolder}/dist/main.js",
    --     cwd = "${workspaceFolder}",
    --     sourceMaps = true,
    --     protocol = "inspector",
    --     console = "integratedTerminal",
    --   },
    --   {
    --     name = "Attach to NestJS",
    --     type = "node2",
    --     request = "attach",
    --     processId = require("dap.utils").pick_process,
    --     cwd = "${workspaceFolder}",
    --     sourceMaps = true,
    --     protocol = "inspector",
    --   },
    -- }
    --
    -- dap.configurations.javascript = dap.configurations.typescript

    dap.adapters["pwa-node"] = {
      type = "server",
      host = "localhost",
      port = "${port}",
      executable = {
        command = "node",
        -- 💀 Make sure to update this path to point to your installation
        args = { "~/js-debug/src/dapDebugServer.js", "${port}" },
      },
    }

    dap.configurations.javascript = {
      {
        type = "pwa-node",
        request = "launch",
        name = "Launch file",
        program = "${file}",
        cwd = "${workspaceFolder}",
      },
      {

        type = "pwa-node",
        request = "attach",
        name = "Attatch",
        processId = require("dap.utils").pick_process,
        cwd = "${workspaceFolder}",
      },
    }

    dap.configurations.typescript = dap.configurations.javascript
  end,
}
