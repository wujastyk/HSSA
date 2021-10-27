-----------------------------------------------------------------------
--         FILE:  xindex-cfg.lua
--  DESCRIPTION:  configuration file for xindex.lua
-- REQUIREMENTS:  
--       AUTHOR:  Herbert Voß
--      LICENSE:  LPPL1.3
--
-- $Id: xindex-cfg.lua 12 2021-08-15 09:28:32Z hvoss $
-----------------------------------------------------------------------

if not modules then modules = { } end modules ['xindex-cfg'] = {
      version = 0.33,
      comment = "main configuration to xindex.lua",
       author = "Herbert Voss",
    copyright = "Herbert Voss",
      license = "LPPL 1.3"
}

itemPageDelimiter = ""     -- Hello: 14
compressPages     = true    -- something like 12--15, instead of 12,13,14,15. the |( ... |) syntax is still valid
fCompress	  = true    -- 3f -> page 3, 4 and 3ff -> page 3, 4, 5
minCompress       = 3       -- 14--17 or 
rangeSymbol       = "--"
numericPage       = true    -- for non numerical pagenumbers, like "VI-17"
sublabels         = {"", "", "--\\,", "---\\,"} -- for the (sub(sub(sub-items  first one is for item
pageNoPrefixDel   = ""     -- a delimiter for page numbers like "VI-17"  -- not used !!!
indexOpening      = ""     -- commands after envStart
idxnewletter      = "\\textbf"  -- Only valid if -n is not set
envStart          = "\\begin{theindex}"  
envStop           = "\\end{theindex}"

--[[
    Each character's position in this array-like table determines its 'priority'.
    Several characters in the same slot have the same 'priority'.
]]
alphabet_lower = { --   for sorting
    { ' ' },  -- only for internal tests
    { 'a', 'á', 'à', 'ä', 'â', 'å', 'æ', 'ā' },
    { 'b' },
    { 'c', 'ç' },
    { 'd', 'ḍ' },
    { 'e', 'é', 'è', 'ë', 'ê', 'ē' },
    { 'f' },
    { 'g' },
    { 'h', 'ḥ' },
    { 'i', 'í', 'ì', 'î', 'ï', 'ī' },
    { 'j' },
    { 'k' },
    { 'l', 'ḷ' },
    { 'm', 'ṃ' },
    { 'n', 'ñ', 'ṇ', 'ṅ' },
    { 'o', 'ó', 'ò', 'ö', 'ô', 'ø', 'œ', 'ø', 'ō' },
    { 'p' },
    { 'q' },
    { 'r', 'ṛ', 'ṝ' },
    { 's', 'š', 'ß', 'ṣ', 'ś' },
    { 't', 'ṭ' },
    { 'u', 'ú', 'ù', 'ü', 'û', 'ū' },
    { 'v' },
    { 'w' },
    { 'x' },
    { 'y', 'ý', 'ÿ' },
    { 'z', 'ž' }
}
alphabet_upper = { -- for sorting
    { ' ' },
    { 'A', 'Á', 'À', 'Ä', 'Å', 'Æ', 'Â', 'Ā'},
    { 'B' },
    { 'C', 'Ç' },
    { 'D', 'Ḍ' },
    { 'E', 'È', 'É', 'Ë', 'Ê', 'Ē' },
    { 'F' },
    { 'G' },
    { 'H', 'Ḥ' },
    { 'I', 'Í', 'Ì', 'Ï', 'Î', 'Ī' },
    { 'J' },
    { 'K' },
    { 'L', 'Ḷ' },
    { 'M', 'Ṃ' },
    { 'N', 'Ñ', 'Ṇ', 'Ṅ' },
    { 'O', 'Ó', 'Ò', 'Ö', 'Ø','Œ', 'Ø', 'Ô', 'Ō' },
    { 'P' },
    { 'Q' },
    { 'R', 'Ṛ', 'Ṝ' },
    { 'S', 'Š', 'Ṣ', 'Ś' },
    { 'T', 'Ṭ' },
    { 'U', 'Ú', 'Ù', 'Ü', 'Û', 'Ū' },
    { 'V' },
    { 'W' },
    { 'X' },
    { 'Y', 'Ý', 'Ÿ' },
    { 'Z', 'Ž' }
}


-- Wujastyk, Edmonton, Canada, July 2020, Sept 2021.
