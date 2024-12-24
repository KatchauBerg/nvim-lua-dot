return {
  'nvim-java/nvim-java',

  config = function ()
    require('lspconfig').jdtls.setup({
      settings = {
        java = {
          configuration = {
            runtimes = {
              {
                name = "JavaSE-21",
                path = "/opt/jdk-21",
                default = true,
              }
            }
          }
        }
      }
    })
  end
}
