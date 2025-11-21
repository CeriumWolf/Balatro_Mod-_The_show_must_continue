--- GLOBALS

G.C.TSMC = {
    RED = HEX("FF0000"),
    BLACK = HEX("000000"),
    BLUE = HEX("0000FF"),
    GREEN = HEX("00FF00"),
    WHITE = HEX("FFFFFF"),
    TRANSPARENT = HEX("00000000"),
}

-- Hooks

local loc_colour_ref = loc_colour
function loc_colour(_c, _default)
    if not G.ARGS.LOC_COLOURS then
        loc_colour_ref()
    end
    G.ARGS.LOC_COLOURS.TSMC_red = G.C.TSMC.RED
    G.ARGS.LOC_COLOURS.TSMC_black = G.C.TSMC.BLACK
    G.ARGS.LOC_COLOURS.TSMC_blue = G.C.TSMC.BLUE
    G.ARGS.LOC_COLOURS.TSMC_green = G.C.TSMC.GREEN
    G.ARGS.LOC_COLOURS.TSMC_white = G.C.TSMC.WHITE
    G.ARGS.LOC_COLOURS.TSMC_transparent = G.C.TSMC.TRANSPARENT
    return loc_colour_ref(_c, _default)
end