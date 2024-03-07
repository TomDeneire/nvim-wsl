local colors = require("modules.color").colors()

-- Note: both old (e.g. "String") and new highlight groups (e.g. "[@string]") are necessary
-- The former for custom (e.g. MUMPS) syntax, the latter for Treesitter!
-- Reference for hl: https://github.com/ellisonleao/gruvbox.nvim/blob/main/lua/gruvbox.lua
local overrides = {
    -- UI
    -- CursorIM = {},
    -- DarkenedPanel = { },
    -- DarkenedStatusline = {},
    -- EndOfBuffer = {},
    -- QuickFixLink = {},
    -- RedrawDebugNormal = {},
    -- VisualNOS = {},
    -- Whitespace = {},
    ColorColumn = { bg = colors.line_hl },
    Conceal = { bg = "NONE" },
    CurSearch = { fg = colors.white, bg = colors.selection },
    Cursor = { underline = true },
    CursorWord = { underline = true },
    CursorColumn = { bg = colors.bg },
    CursorLine = { bg = colors.line_hl },
    CursorLineNR = { fg = colors.line_nr, bold = false },
    CursorLineNr = { fg = colors.line_nr, bold = false },
    DiagnosticError = { fg = colors.dim_red },
    DiagnosticSignError = { fg = colors.dim_red },
    DiagnosticSignHint = { fg = colors.white },
    DiagnosticSignInfo = { fg = colors.grey },
    DiagnosticSignOk = { fg = colors.white },
    DiagnosticSignWarn = { fg = colors.orange },
    DiagnosticFloatingError = { fg = colors.dim_red },
    DiagnosticFloatingHint = { fg = colors.white },
    DiagnosticFloatingInfo = { fg = colors.grey },
    DiagnosticFloatingOk = { fg = colors.white },
    DiagnosticFloatingWarn = { fg = colors.orange },
    DiagnosticUnderlineError = { fg = colors.dim_red },
    DiagnosticUnderlineHint = { fg = colors.white },
    DiagnosticUnderlineInfo = { fg = colors.grey },
    DiagnosticUnderlineOk = { fg = colors.white },
    DiagnosticUnderlineWarn = { fg = colors.orange },
    DiagnosticVirtualError = { fg = colors.dim_red },
    DiagnosticVirtualHint = { fg = colors.white },
    DiagnosticVirtualInfo = { fg = colors.grey },
    DiagnosticVirtualOk = { fg = colors.white },
    DiagnosticVirtualWarn = { fg = colors.orange },
    DiagnosticHint = { fg = colors.white },
    DiagnosticInfo = { fg = colors.grey },
    DiagnosticOk = { fg = colors.white },
    DiagnosticWarn = { fg = colors.orange },
    DiffAdd = { bg = colors.bg, blend = 20 },
    DiffChange = { bg = colors.bg, blend = 20 },
    DiffDelete = { bg = colors.bg, blend = 20 },
    DiffText = { bg = colors.bg, blend = 20 },
    Directory = { fg = colors.white },
    ErrorMsg = { fg = colors.red, bg = colors.bg, bold = false },
    FloatBorder = { fg = colors.white, bg = "NONE" },
    FloatTitle = { fg = colors.white, bg = "NONE" },
    FoldColumn = { fg = colors.grey },
    Folded = { fg = colors.white, bg = colors.bg },
    GitSignsAdd = { fg = colors.green },
    GitSignsChange = { fg = colors.white },
    GitSignsDelete = { fg = colors.dim_red },
    GruvboxGray = { fg = colors.grey },
    GruvBoxFg0 = { fg = colors.white },
    GruvBoxFg1 = { fg = colors.white },
    GruvBoxFg2 = { fg = colors.white },
    GruvBoxFg3 = { fg = colors.white },
    GruvBoxFg4 = { fg = colors.white },
    GruvBoxBg0 = { bg = colors.bg },
    GruvBoxBg1 = { bg = colors.bg },
    GruvBoxBg2 = { bg = colors.bg },
    GruvBoxBg3 = { bg = colors.bg },
    GruvBoxBg4 = { bg = colors.bg },
    SignAdd = { fg = colors.green, bg = "NONE" },
    SignChange = { fg = colors.orange, bg = "NONE" },
    SignDelete = { fg = colors.dim_red, bg = "NONE" },
    IncSearch = { fg = colors.white, bg = colors.selection },
    IndentBlanklineChar = { fg = colors.grey },
    IndentBlanklineSpaceChar = { fg = colors.grey },
    IndentBlanklineSpaceCharBlankline = { fg = colors.grey },
    CmpItemAbbr = { fg = colors.white, bg = colors.bg },
    CmpItemAbbrDeprecated = { fg = colors.white, bg = colors.bg },
    CmpItemAbbrMatch = { fg = colors.green, bg = colors.bg },
    CmpItemAbbrMatchFuzzy = { fg = colors.green, bg = colors.bg },
    CmpItemKind = { fg = colors.white, bg = colors.bg },
    CmpItemKindClass = { fg = colors.green, bg = colors.bg },
    CmpItemKindFunction = { fg = colors.yellow, bg = colors.bg },
    CmpItemKindInterface = { fg = colors.white, bg = colors.bg },
    CmpItemKindMethod = { fg = colors.red, bg = colors.bg },
    CmpItemKindSnippet = { fg = colors.white, bg = colors.bg },
    CmpItemKindVariable = { fg = colors.white, bg = colors.bg },
    LazyNormal = { bg = colors.line_hl, fg = colors.white },
    LineNr = { fg = colors.line_nr },
    MasonNormal = { bg = colors.line_hl, fg = colors.white },
    MatchParen = { bg = colors.line_hl, fg = colors.orange },
    ModeMsg = { fg = colors.white },
    MoreMsg = { fg = colors.white },
    NonText = { fg = colors.grey },
    Normal = { fg = colors.white, bg = colors.bg },
    NormalDark = { fg = colors.white, bg = colors.cyan },
    NormalFloat = { fg = colors.white, bg = colors.line_hl },
    NormalNC = { fg = colors.white, bg = colors.bg },
    NvimInternalError = { fg = colors.red },
    Pmenu = { fg = colors.white, bg = colors.bg },
    PmenuExtra = { fg = colors.white, bg = colors.bg },
    PmenuExtraSel = { fg = colors.white, bg = colors.bg },
    PmenuKind = { fg = colors.white, bg = colors.bg },
    PmenuKindSel = { fg = colors.white, bg = colors.bg },
    PmenuSbar = { fg = colors.white, bg = colors.bg },
    PmenuSel = { fg = colors.white, bg = colors.bg },
    PmenuThumb = { fg = colors.white, bg = colors.bg },
    Question = { fg = colors.cyan },
    RedrawDebugClear = { fg = colors.grey, bg = colors.bg },
    RedrawDebugComposed = { fg = colors.grey, bg = colors.bg },
    RedrawDebugRecompose = { fg = colors.grey, bg = colors.bg },
    Search = { fg = colors.white, bg = colors.selection },
    SignColumn = { fg = colors.white, bg = "NONE" },
    SpecialKey = { fg = colors.cyan },
    SpellBad = { sp = colors.grey, undercurl = true },
    SpellCap = { sp = colors.grey, undercurl = true },
    SpellLocal = { sp = colors.grey, undercurl = true },
    SpellRare = { sp = colors.grey, undercurl = true },
    StatusLine = { fg = colors.grey, bg = colors.bg },
    StatusLineNC = { fg = colors.grey, bg = colors.bg, blend = 60 },
    StatusLineTerm = { fg = colors.bg, bg = colors.bg },
    StatusLineTermNC = { fg = colors.bg, bg = colors.bg },
    Substitute = { fg = colors.white, bg = colors.selection },
    TabLine = { fg = colors.grey, bg = colors.bg },
    TabLineFill = { bg = colors.bg },
    TabLineSel = { fg = colors.white, bg = colors.bg, bold = true },
    TelescopePreviewBorder = { bg = colors.bg, fg = colors.white },
    TelescopePreviewNormal = { bg = colors.bg },
    TelescopePromptBorder = { fg = colors.white, bg = colors.bg },
    TelescopePromptNormal = { bg = colors.bg },
    TelescopeResultsBorder = { fg = colors.white, bg = colors.bg },
    TelescopeResultsNormal = { fg = colors.white, bg = colors.bg },
    TelescopeTitle = { fg = colors.white },
    TelescopeSelection = { fg = colors.brightwhite, bg = colors.bg, bold = true },
    TelescopeCaret = { fg = colors.orange, bg = colors.bg },
    TelescopeMatching = { fg = colors.green, bg = colors.bg, bold = false },
    VertSplit = { fg = colors.white },
    Visual = { fg = colors.white, bg = colors.selection },
    WarningMsg = { fg = colors.orange },
    WildMenu = { fg = colors.white, bg = colors.selection },
    WinBar = { fg = colors.grey, bg = colors.bg },
    WinBarNC = { fg = colors.grey, bg = colors.bg },
    WinSeparator = { fg = colors.white },
    diffAdded = { bg = colors.bg, blend = 20 },
    diffChanged = { bg = colors.bg, blend = 20 },
    diffRemoved = { bg = colors.bg, blend = 20 },
    -- Syntax
    Annotation = { fg = colors.white },
    Attribute = { fg = colors.white },
    Boolean = { fg = colors.cyan },
    Character = { fg = colors.red, bold = false },
    ["@character.special"] = { fg = colors.red, bold = false },
    Comment = { fg = colors.green, italic = false },
    ["@conditional"] = { fg = colors.purple },
    ["@conditional.ternary"] = { fg = colors.purple },
    Constant = { fg = colors.brightblue },
    ["@constant.builtin"] = { fg = colors.brightblue },
    ["@constant.macro"] = { fg = colors.brightblue },
    ["@constructor"] = { fg = colors.yellow, bold = false },
    ["@constructor.lua"] = { fg = colors.yellow, bold = false },
    Define = { fg = colors.purple },
    Delimiter = { fg = colors.yellow },
    Exception = { fg = colors.purple },
    ["@exception"] = { fg = colors.purple },
    ["@error"] = { fg = colors.red, bold = true },
    ["@field"] = { fg = colors.grey, bold = false },
    Float = { fg = colors.green },
    ["@number.float"] = { fg = colors.green },
    Function = { fg = colors.yellow },
    ["@function.call"] = { fg = colors.yellow },
    ["@function.builtin"] = { fg = colors.cyan },
    ["@function.macro"] = { fg = colors.yellow },
    Fun = { fg = colors.yellow },
    Identifier = { fg = colors.white },
    Include = { fg = colors.purple },
    Keyword = { fg = colors.blue },
    ["@keyword"] = { fg = colors.blue },
    ["@keyword.conditional"] = { fg = colors.purple },
    ["@keyword.exception"] = { fg = colors.purple },
    ["@keyword.function"] = { fg = colors.blue },
    ["@keyword.operator"] = { fg = colors.blue, bold = false },
    ["@keyword.return"] = { fg = colors.purple, bold = true },
    ["@keyword.luap"] = { fg = colors.blue },
    Label = { fg = colors.yellow },
    Number = { fg = colors.green },
    Method = { fg = colors.red, bold = false },
    ["@method.call"] = { fg = colors.yellow },
    ["@module"] = { fg = colors.white, bold = false },
    ["@namespace"] = { fg = colors.white, bold = false },
    Operator = { fg = colors.yellow },
    ["@parameter"] = { fg = colors.grey },
    ["@variable.parameter"] = { fg = colors.grey },
    ["@parameter.reference"] = { fg = colors.grey },
    ["@property"] = { fg = colors.grey },
    PreProc = { fg = colors.yellow },
    Punctuation = { fg = colors.yellow },
    ["@punctuation.delimiter"] = { fg = colors.yellow },
    ["@punctuation.bracket"] = { fg = colors.yellow },
    ["@punctuation.special"] = { fg = colors.yellow },
    Repeat = { fg = colors.purple },
    Regex = { fg = colors.red, bold = false },
    Special = { fg = colors.cyan },
    Special1 = { fg = colors.cyan },
    Special2 = { fg = colors.cyan },
    Special3 = { fg = colors.cyan },
    SpecialChar = { fg = colors.orange },
    Statement = { fg = colors.red, bold = false },
    StorageClass = { fg = colors.yellow },
    String = { fg = colors.brown },
    ["@string"] = { fg = colors.brown },
    ["@string.regex"] = { fg = colors.red, bold = false },
    ["@string.escape"] = { fg = colors.red, bold = false },
    ["@string.special"] = { fg = colors.red, bold = false },
    Structure = { fg = colors.green, bold = true },
    ["@symbol"] = { fg = colors.cyan, bold = false },
    ["@tag"] = { fg = colors.red },
    ["@tag.attribute"] = { fg = colors.yellow },
    ["@tag.delimiter"] = { fg = colors.yellow },
    Term = { fg = colors.white },
    Text = { fg = colors.white },
    ["@text.strong"] = { fg = colors.white, bold = true },
    ["@text.emphasis"] = { fg = colors.white, bold = true },
    ["@text.underline"] = { fg = colors.white, underline = true },
    -- ["@text.strike"] = "TSStrike",
    Title = { fg = colors.blue },
    ["@text.title"] = { fg = colors.blue },
    ["@text.literal"] = { fg = colors.brightblue },
    ["@text.uri"] = { fg = colors.red },
    ["@text.math"] = { fg = colors.red },
    ["@text.reference"] = { fg = colors.white },
    ["@text.environment"] = { fg = colors.white },
    ["@text.environment.name"] = { fg = colors.orange },
    ["@text.note"] = { fg = colors.white },
    ["@text.warning"] = { fg = colors.orange },
    ["@text.danger"] = { fg = colors.red, bold = false },
    Todo = { fg = colors.yellow },
    Type = { fg = colors.green, bold = true },
    ["@type.builtin"] = { fg = colors.green, bold = true },
    ["@type.qualifier"] = { fg = colors.green, bold = true },
    ["@type.definition"] = { fg = colors.green, bold = true },
    Variable = { fg = colors.white },
    ["@variable"] = { fg = colors.white },
    ["@variable.builtin"] = { fg = colors.cyan },
    -- QtechNG files types
    MumpsCommand = { fg = colors.white, italic = true },
    MumpsLabel = { fg = colors.blue, bold = true },
    MumpsGlobalName = { fg = colors.blue },
    MumpsMacro = { fg = colors.blue, italic = true },
    MumpsPName = { fg = colors.brightblue, italic = true },
    MumpsUName = { fg = colors.cyan, bold = true },
    MumpsCName = { fg = colors.grey },
    MumpsFName = { fg = colors.brightblue, bold = true },
    MumpsDoGoLabel = { fg = colors.cyan, italic = true },
    MumpsLabelName = { fg = colors.green, bold = true },
    MumpsIntrinsicFunction = { fg = colors.cyan, italic = true },
    BfileValue = { fg = colors.brightwhite },
    DfileInstruction = { fg = colors.brightwhite, bold = true },
    DfileMacroLabel = { fg = colors.blue, bold = true },
    DfileSynopsis = { fg = colors.purple },
    DfileExample = { fg = colors.yellow }
}


return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
        require("gruvbox").setup({
            terminal_colors = false, -- add neovim terminal colors
            undercurl = true,
            underline = true,
            bold = true,
            italic = {
                strings = false,
                emphasis = false,
                comments = false,
                operators = false,
                folds = true,
            },
            strikethrough = true,
            invert_selection = false,
            invert_signs = false,
            invert_tabline = false,
            invert_intend_guides = false,
            inverse = false,   -- invert background for search, diffs, statuslines and errors
            contrast = "soft", -- can be "hard", "soft" or empty string
            palette_overrides = colors,
            overrides = overrides,
            dim_inactive = false,
            transparent_mode = true,
        })

        -- Tell nvim to use this colorscheme
        vim.cmd.colorscheme("gruvbox")

        -- Better quickfixlist (do this after setting colorscheme!)
        require("modules.color").better_quickfixlist()
    end
}
