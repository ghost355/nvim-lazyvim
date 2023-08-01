return {
  {
    "CRAG666/code_runner.nvim",
    config = function()
      require("code_runner").setup({
        filetype = {
          cpp = "cd '$dir' && clang++ -std=c++20 -g $fileName -o $fileNameWithoutExt && '$dir/$fileNameWithoutExt'",
        },
        startinsert = true,
      })
    end,
  },
}
