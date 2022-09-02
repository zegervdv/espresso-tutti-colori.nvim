local M = {}

function M.setup(colors)
  local hlgroups = {
    Comment = { fg = colors.grey0 },
    ColorColumn = { fg = colors.none, bg = colors.none },
    -- Conceal = { fg = colors.bg_light3, bold = true },
    Cursor = { fg = colors.fg, bg = colors.cursor },
    -- lCursor = { link = 'Cursor' },
    -- CursorIM = { link = 'Cursor' },
    CursorLine = { bg = colors.cursorline },
    CursorColumn = { link = 'CursorLine' },
    Directory = { fg = colors.purple, bg = colors.purple_bg },
    DiffAdd = { bg = colors.diff_add_bg },
    DiffChange = { bg = colors.diff_text_bg },
    DiffDelete = { fg = colors.bg, bg = colors.diff_remove_bg },
    DiffText = { fg = colors.bg, bg = colors.diff_text_bg },
    EndOfBuffer = { fg = colors.non_text_fg },
    -- -- TermCursor = {},
    -- -- TermCursorNC = {},
    -- ErrorMsg = { fg = colors.diag.error },
    VertSplit = { link = 'WinSeparator' },
    WinSeparator = { fg = colors.line, bg = colors.none },
    Folded = { fg = colors.light_purple, bg = colors.purple_bg },
    FoldColumn = { fg = colors.purple },
    SignColumn = { bg = colors.none },
    -- SignColumnSB = { link = 'SignColumn' },
    -- Substitute = { fg = colors.fg, bg = colors.git.removed },
    LineNr = { fg = colors.line, bg = colors.none },
    CursorLineNr = { fg = '#667788' },
    MatchParen = { bg = colors.match_bg },
    -- ModeMsg = { fg = colors.diag.warning, bold = true },
    -- MsgArea = { fg = colors.fg_dark },
    -- -- MsgSeparator = {},
    -- MoreMsg = { fg = colors.diag.info, bg = colors.bg },
    NonText = { fg = colors.non_text_fg, bg = colors.non_text_bg },
    Normal = { fg = colors.fg, bg = colors.bg },
    -- NormalNC = config.dimInactive and { fg = colors.fg_dark, bg = colors.bg_dim } or { link = 'Normal' },
    -- NormalSB = { link = 'Normal' },
    -- NormalFloat = { fg = colors.fg_dark, bg = colors.bg_dark },
    -- FloatBorder = { fg = colors.fg_border, bg = colors.bg_dark },
    Pmenu = { bg = colors.blue_bg },
    PmenuSel = { fg = colors.bg, bg = colors.light_blue },
    -- PmenuSbar = { link = 'Pmenu' },
    -- PmenuThumb = { bg = colors.bg_search },
    -- Question = { link = 'MoreMsg' },
    -- QuickFixLine = { link = 'CursorLine' },
    Search = { bg = colors.search },
    -- CurSearch = {
    --   link = 'Search', --[[ IncSearch ]]
    -- },
    -- IncSearch = { fg = colors.bg_visual, bg = colors.diag.warning },
    SpecialKey = { link = 'NonText' },
    -- SpellBad = { undercurl = true, sp = colors.diag.error },
    -- SpellCap = { undercurl = true, sp = colors.diag.warning },
    -- SpellLocal = { undercurl = true, sp = colors.diag.warning },
    -- SpellRare = { undercurl = true, sp = colors.diag.warning },
    StatusLine = { fg = colors.grey2, bg = colors.status },
    -- StatusLineNC = { fg = colors.fg_comment, bg = colors.bg_status },
    -- Winbar = { fg = colors.fg_dark, bg = 'NONE' },
    -- WinbarNC = { fg = colors.fg_dark, bg = config.dimInactive and colors.bg_dim or 'NONE' },
    -- TabLine = { bg = colors.bg_dark, fg = colors.bg_light3 },
    -- TabLineFill = { bg = colors.bg },
    -- TabLineSel = { fg = colors.fg_dark, bg = colors.bg_light1 },
    Title = { fg = colors.blue, bg = colors.blue_bg },
    Visual = { bg = colors.visual },
    VisualNOS = { link = 'Visual' },
    -- WarningMsg = { fg = colors.diag.warning },
    -- Whitespace = { fg = colors.bg_light2 },
    -- WildMenu = { link = 'Pmenu' },

    Constant = { fg = colors.light_purple, bg = colors.purple_bg },
    String = { fg = colors.green },
    Character = { link = 'String' },
    Number = { fg = colors.light_purple, bg = colors.purple_bg },
    Boolean = { link = 'Constant' },
    Float = { link = 'Number' },

    Identifier = { fg = colors.grey1 },
    Function = { fg = colors.dark_red },
    Method = { link = 'Function' },
    Statement = { fg = colors.blue, bg = colors.blue_bg },
    -- -- Conditional = {},
    -- -- Repeat = {},
    -- -- Label = { link = 'Statement' }, --TODO: check default
    -- Operator = { fg = colors.op },
    Keyword = { fg = colors.blue, bg = colors.blue_bg },
    -- Exception = { fg = colors.sp2 },
    Variable = { fg = colors.olive_green },

    PreProc = { fg = colors.purple, bg = colors.purple_bg },
    Include = { fg = colors.blue, bg = colors.blue_bg },
    -- -- Define = {},
    -- -- Macro = {},
    -- -- PreCondit = {},

    Type = { fg = colors.red },
    -- Struct = { link = 'Type' },
    -- -- StorageClass = {},
    -- -- Structure = {},
    -- -- Typedef = {},

    Special = { fg = colors.blue, bg = colors.blue_bg },
    -- -- SpecialChar = {},
    -- -- Tag = {},
    -- -- Delimiter = { fg = c.br},
    -- -- SpecialComment = {},
    -- -- Debug = {},

    -- Underlined = { fg = colors.sp, underline = true },
    -- Bold = { bold = true },
    -- Italic = { italic = true },

    -- Ignore = { link = 'NonText' },

    -- Error = { fg = colors.diag.error },
    -- Todo = { fg = colors.fg_reverse, bg = colors.diag.info, bold = true },

    -- qfLineNr = { link = 'lineNr' },
    -- qfFileName = { link = 'Directory' },

    -- -- htmlH1 = {},
    -- -- htmlH2 = {},

    -- -- mkdHeading = {},
    -- -- mkdCode = {},
    -- -- mkdCodeDelimiter = {},
    -- -- mkdCodeStart = {},
    -- -- mkdCodeEnd = {},
    -- -- mkdLink = {},

    -- -- markdownHeadingDelimiter = {},
    -- markdownCode = { fg = colors.st },
    -- markdownCodeBlock = { fg = colors.st },
    -- markdownEscape = { fg = 'NONE' },
    -- -- markdownH1 = {},
    -- -- markdownH2 = {},
    -- -- markdownLinkText = {},

    -- debugPC = { bg = colors.diff.delete },
    -- debugBreakpoint = { fg = colors.sp },

    -- LspReferenceText = { bg = colors.diff.text },
    -- LspReferenceRead = { link = 'LspReferenceText' },
    -- LspReferenceWrite = { link = 'LspReferenceText' },

    DiagnosticError = { fg = colors.error_fg, bg = colors.error_bg },
    DiagnosticWarn = { fg = colors.warning_fg, bg = colors.warning_bg },
    -- DiagnosticInfo = { fg = colors.diag.info },
    -- DiagnosticHint = { fg = colors.diag.hint },

    DiagnosticSignError = { fg = colors.error_fg },
    DiagnosticSignWarn = { fg = colors.warning_fg },
    DiagnosticSignInfo = { link = 'DiagnosticInfo' },
    DiagnosticSignHint = { link = 'DiagnosticHint' },

    DiagnosticVirtualTextError = { link = 'DiagnosticError' },
    DiagnosticVirtualTextWarn = { link = 'DiagnosticWarn' },
    DiagnosticVirtualTextInfo = { link = 'DiagnosticInfo' },
    DiagnosticVirtualTextHint = { link = 'DiagnosticHint' },

    -- DiagnosticUnderlineError = { undercurl = true, sp = colors.diag.error },
    -- DiagnosticUnderlineWarn = { undercurl = true, sp = colors.diag.warning },
    -- DiagnosticUnderlineInfo = { undercurl = true, sp = colors.diag.info },
    -- DiagnosticUnderlineHint = { undercurl = true, sp = colors.diag.hint },

    -- LspSignatureActiveParameter = { fg = colors.diag.warning },
    -- LspCodeLens = { fg = colors.fg_comment },

    -- -- ALEErrorSign = {},
    -- -- ALEWarningSign = {},

    -- -- TSAnnotation = {},
    -- TSAttribute = { link = 'Constant' },
    TSBoolean = { link = 'Boolean' },
    TSCharacter = { link = 'Character' },
    TSComment = { link = 'Comment' },
    -- -- TSNote = { fg = c.fg_dark, bg = c.diag.hint, nocombine = true, bold = true}, -- links to SpecialComment -> Special
    -- TSWarning = { link = 'Todo' }, --default
    -- TSDanger = { link = 'WarningMsg' }, --default
    -- TSConstructor = { fg = colors.kw }, -- Function/Special/Statement/Keyword
    -- -- TSConditional = {},
    -- -- TSConstant = {},
    -- -- TSConstBuiltin = {},
    -- -- TSConstMacro = {},
    -- -- TSError = { fg = colors.diag.error },
    -- -- TSException = { link = 'Exception' }, -- default, -> statement
    -- TSException = vim.tbl_extend(
    --   'force',
    --   { fg = config.specialException and colors.sp3 or colors.sm },
    --   config.statementStyle
    -- ),
    TSField = { fg = colors.bold_blue },
    -- -- TSFloat = {},
    -- -- TSFunction = {},
    -- -- TSFuncBuiltin = {link = "Function" },
    -- -- TSFuncMacro = {},
    -- -- TSInclude = {},
    -- TSKeyword = { link = 'Keyword' },
    -- -- TSKeywordFunction = { link = "Keyword" }, -- default
    -- -- TSKeywordFunction = { link = "Function" },
    -- TSKeywordReturn = vim.tbl_extend(
    --   'force',
    --   { fg = config.specialReturn and colors.sp3 or colors.kw },
    --   config.keywordStyle
    -- ),
    -- TSLabel = { link = 'Label' },
    -- TSMethod = { link = 'Function' },
    -- -- TSNamespace = {},
    -- -- TSNone = {},
    -- -- TSNumber = {},
    -- TSOperator = { link = 'Operator' },
    -- TSKeywordOperator = { fg = colors.op, bold = true },
    -- TSParameter = { link = 'Identifier' }, -- default
    -- -- TSParameterReference = {},
    -- TSProperty = { link = 'Identifier' }, -- default
    -- -- TSPunctDelimiter = { fg = c.op },
    -- TSPunctDelimiter = { fg = colors.br },
    -- TSPunctBracket = { fg = colors.br },
    -- TSPunctSpecial = { fg = colors.br },
    -- -- TSRepeat = {},
    -- -- TSString = {},
    TSStringRegex = { fg = colors.fg, bg = colors.light_green },
    TSStringEscape = { fg = colors.fg, bg = colors.light_green },
    -- -- TSSymbol = {},
    -- -- TSType = {},
    -- -- TSTypeBuiltin = {},
    -- TSVariable = { fg = colors.fg },
    TSVariableBuiltin = { fg = colors.purple },

    -- -- TSTag = {},
    -- -- TSTagDelimiter = {},
    -- -- TSText = {},
    -- -- TSTextReference = { fg = c.sp2 },
    -- -- TSEmphasis = {},
    -- -- TSUnderline = {},
    -- -- TSStrike = {},
    -- -- TSTitle = {},
    -- -- TSLiteral = {},
    -- -- TSURI = {},

    -- -- Lua
    -- -- luaTSProperty = {},

    -- -- LspTrouble
    -- -- LspTroubleText = {},
    -- -- LspTroubleCount = {},
    -- -- LspTroubleNormal = {},

    -- -- Illuminate
    -- -- illuminatedWord = {},
    -- -- illuminatedCurWord = {},

    -- -- Git
    diffAdded = { bg = colors.diff_add_bg },
    diffRemoved = { fg = colors.bg, bg = colors.diff_remove_bg },
    -- diffDeleted = { fg = colors.git.removed },
    diffChanged = { fg = colors.bg, bg = colors.diff_text_bg },
    diffOldFile = { fg = colors.diff_remove_bg },
    diffNewFile = { fg = colors.olive_green },
    -- -- diffFile = { fg = c.steelGray },
    -- -- diffLine = { fg = c.steelGray },
    -- -- diffIndexLine = { link = 'Identifier' },

    -- -- Neogit
    -- -- NeogitBranch = {},
    -- -- NeogitRemote = {},
    -- NeogitDiffDelete = { fg = colors.git.removed, bg = colors.diff.delete },
    -- NeogitDiffAdd = { fg = colors.git.added, bg = colors.diff.add },
    -- NeogitHunkHeader = { fg = colors.id },
    -- NeogitDiffContextHighlight = { bg = colors.diff.change },

    -- -- GitGutter
    -- -- GitGutterAdd = {},
    -- -- GitGutterChange = {},
    -- -- GitGutterDelete = {},

    -- -- GitSigns
    -- GitSignsAdd = { link = 'diffAdded' },
    -- GitSignsChange = { link = 'diffChanged' },
    -- GitSignsDelete = { link = 'diffDeleted' },
    -- GitSignsDeleteLn = { bg = colors.diff.delete },

    -- -- Telescope                      = {},
    -- TelescopeBorder = { fg = colors.fg_border, bg = colors.bg },
    -- TelescopeResultsClass = { link = 'TSType' },
    -- TelescopeResultsStruct = { link = 'TSType' },
    -- TelescopeResultsVariable = { link = 'TSVariable' },

    -- -- NvimTree                       = {},
    -- NvimTreeNormal = { link = 'Normal' },
    -- NvimTreeNormalNC = { link = 'NormalNC' },
    -- NvimTreeRootFolder = { fg = colors.id, bold = true },
    -- NvimTreeGitDirty = { fg = colors.git.changed },
    -- NvimTreeGitNew = { fg = colors.git.added },
    -- NvimTreeGitDeleted = { fg = colors.git.removed },
    -- NvimTreeSpecialFile = { fg = colors.sp },
    -- -- NvimTreeIndentMarker           = {},
    -- NvimTreeImageFile = { fg = colors.sp2 },
    -- NvimTreeSymlink = { link = 'Type' },
    -- NvimTreeFolderName = { link = 'Directory' },
    -- NvimTreeExecFile = { fg = colors.springGreen, bold = true },
    -- NvimTreeGitStaged = { fg = colors.git.added },
    -- NvimTreeOpenedFile = { fg = colors.sp, italic = true },
    -- NvimTreeWinSeparator = { link = 'WinSeparator' },

    -- -- Fern
    -- -- FernBranchText = {},

    -- -- glyph = {},
    -- -- GlyphPalette1 = {},
    -- -- GlyphPalette2 = {},
    -- -- GlyphPalette3 = {},
    -- -- GlyphPalette4 = {},
    -- -- GlyphPalette6 = {},
    -- -- GlyphPalette7 = {},
    -- -- GlyphPalette9 = {},

    -- -- Dashboard
    -- DashboardShortCut = { fg = colors.sp },
    -- DashboardHeader = { fg = colors.git.removed },
    -- DashboardCenter = { fg = colors.id },
    -- DashboardFooter = { fg = colors.fn },

    -- -- WhichKey = {},
    -- -- WhichKeyGroup = {},
    -- -- WhichKeyDesc = {},
    -- -- WhichKeySeperator = {},
    -- -- WhichKeySeparator = {},
    -- -- WhichKeyFloat = {},
    -- -- WhichKeyValue = {},

    -- -- LspSaga
    -- -- DiagnosticWarning = {},
    -- -- DiagnosticInformation = {},

    -- -- LspFloatWinNormal = {},
    -- -- LspFloatWinBorder = {},
    -- -- LspSagaBorderTitle = {},
    -- -- LspSagaHoverBorder = {},
    -- -- LspSagaRenameBorder = {},
    -- -- LspSagaDefPreviewBorder = {},
    -- -- LspSagaCodeActionBorder = {},
    -- -- LspSagaFinderSelection = {},
    -- -- LspSagaCodeActionTitle = {},
    -- -- LspSagaCodeActionContent = {},
    -- -- LspSagaSignatureHelpBorder = {},
    -- -- ReferencesCount = {},
    -- -- DefinitionCount = {},
    -- -- DefinitionIcon = {},
    -- -- ReferencesIcon = {},
    -- -- TargetWord = {},

    -- -- Floaterm
    -- FloatermBorder = { fg = colors.fg_border, bg = colors.bg },

    -- -- NeoVim                         = {},
    -- healthError = { fg = colors.diag.error },
    -- healthSuccess = { fg = colors.springGreen },
    -- healthWarning = { fg = colors.diag.warning },

    -- -- BufferLine
    -- -- BufferLineIndicatorSelected = {},
    -- -- BufferLineFill = {},

    -- -- Barbar = {},
    -- -- BufferCurrent = {},
    -- -- BufferCurrentIndex = {},
    -- -- BufferCurrentMod = {},
    -- -- BufferCurrentSign = {},
    -- -- BufferCurrentTarget = {},
    -- -- BufferVisible = {},
    -- -- BufferVisibleIndex = {},
    -- -- BufferVisibleMod = {},
    -- -- BufferVisibleSign = {},
    -- -- BufferVisibleTarget = {},
    -- -- BufferInactive = {},
    -- -- BufferInactiveIndex = {},
    -- -- BufferInactiveMod = {},
    -- -- BufferInactiveSign = {},
    -- -- BufferInactiveTarget = {},
    -- -- BufferTabpages = {},
    -- -- BufferTabpage = {},

    -- -- Sneak
    -- -- Sneak = {},
    -- -- SneakScope = {},

    -- -- Hop
    -- -- HopNextKey = {},
    -- -- HopNextKey1 = {},
    -- -- HopNextKey2 = {},
    -- -- HopUnmatched = {},

    -- -- LightspeedGreyWash = {},

    -- -- Cmp
    -- CmpDocumentation = { link = 'NormalFloat' },
    -- CmpDocumentationBorder = { link = 'FloatBorder' },
    -- CmpCompletion = { link = 'Pmenu' },
    -- CmpCompletionSel = { fg = 'NONE', bg = colors.bg_menu_sel },
    -- CmpCompletionBorder = { fg = colors.bg_search, bg = colors.bg_menu },
    -- CmpCompletionThumb = { link = 'PmenuThumb' },
    -- CmpCompletionSbar = { link = 'PmenuSbar' },

    -- CmpItemAbbr = { fg = colors.fg_menu },
    -- CmpItemAbbrDeprecated = { fg = colors.fg_comment, strikethrough = true },

    -- CmpItemAbbrMatch = { fg = colors.fn },
    -- CmpItemAbbrMatchFuzzy = { link = 'CmpItemAbbrMatch' },

    -- CmpItemKindDefault = { fg = colors.dep },
    -- CmpItemMenu = { fg = colors.fg_comment },

    -- CmpItemKindVariable = { fg = colors.fg_dark },

    -- CmpItemKindFunction = { link = 'Function' },
    -- CmpItemKindMethod = { link = 'Function' },

    -- CmpItemKindConstructor = { link = 'TSConstructor' },

    -- CmpItemKindClass = { link = 'Type' },
    -- CmpItemKindInterface = { link = 'Type' },
    -- CmpItemKindStruct = { link = 'Type' },

    -- CmpItemKindProperty = { link = 'TSProperty' },
    -- CmpItemKindField = { link = 'TSField' },
    -- CmpItemKindEnum = { link = 'Identifier' },

    -- CmpItemKindSnippet = { fg = colors.sp },

    -- CmpItemKindText = { link = 'TSText' },

    -- CmpItemKindModule = { link = 'TSInclude' },

    -- CmpItemKindFile = { link = 'Directory' },
    -- CmpItemKindFolder = { link = 'Directory' },

    -- CmpItemKindKeyword = { link = 'TSKeyword' },
    -- CmpItemKindTypeParameter = { link = 'Identifier' },
    -- CmpItemKindConstant = { link = 'Constant' },
    -- CmpItemKindOperator = { link = 'Operator' },
    -- CmpItemKindReference = { link = 'TSParameterReference' },
    -- CmpItemKindEnumMember = { link = 'TSField' },

    -- CmpItemKindValue = { link = 'String' },
    -- -- CmpItemKindUnit = {},
    -- -- CmpItemKindEvent = {},
    -- -- CmpItemKindColor = {},

    -- CmpItemKindCopilot = { link = 'String' },

    -- -- IndentBlankline
    -- IndentBlanklineChar = { fg = colors.bg_light2 },
    -- IndentBlanklineSpaceChar = { fg = colors.bg_light2 },
    -- IndentBlanklineSpaceCharBlankline = { fg = colors.bg_light2 },
    -- IndentBlanklineContextChar = { fg = colors.bg_light3 },
    -- IndentBlanklineContextStart = { sp = colors.bg_light3, underline = true },
  }
  return hlgroups
end

return M
