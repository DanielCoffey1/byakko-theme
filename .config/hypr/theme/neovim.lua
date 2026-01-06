return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07) - Tiger theme (high contrast)
                base00 = "#0A0F15", -- Default background (dark blue-gray)
                base01 = "#1A2A3A", -- Lighter background (status bars)
                base02 = "#334A5F", -- Selection background
                base03 = "#6B88A8", -- Comments, invisibles
                base04 = "#90A8C0", -- Dark foreground
                base05 = "#E0E8F0", -- Default foreground (light blue-gray)
                base06 = "#E8F0F8", -- Light foreground
                base07 = "#F0F8FF", -- Light background

                -- Accent colors (base08-base0F) - Tiger theme (high contrast)
                base08 = "#FF4830", -- Variables, errors, red (bright orange-red)
                base09 = "#6B88A8", -- Integers, constants (blue-gray)
                base0A = "#B0C0D8", -- Classes, types (light gray)
                base0B = "#6B88A8", -- Strings (blue-gray)
                base0C = "#B0C0D8", -- Support, regex (light gray)
                base0D = "#90A8C0", -- Functions, keywords (blue-gray)
                base0E = "#FF6050", -- Keywords, storage (bright orange-red)
                base0F = "#B0C0D8", -- Deprecated (light gray)
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
