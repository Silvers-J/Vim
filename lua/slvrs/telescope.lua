require('telescope').setup{
        defaults = {
                file_ignore_patterns = { "node_modules", "bin", "target", "build" }
        },
        extensions = {
                fzy_native = {
                    override_generic_sorter = false,
                    override_file_sorter = true,
                }
            }
}
require('telescope').load_extension('fzy_native')
