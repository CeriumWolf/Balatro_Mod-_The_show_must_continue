-- you can have shared helper functions-- exemple frome SampleJimbos
function shakecard(self) --visually shake a card
    G.E_MANAGER:add_event(Event({
        func = function()
            self:juice_up(0.5, 0.5)
            return true
        end
    }))
end

SMODS.Atlas({
    key = "theshow",
    path = "theshow.png",
    px = 71,
    py = 95,
})

SMODS.Joker{
    key = "theshow",
    name = "The Show",
    config = { extra = { x_mult = 2, x_mult_mod = 1 } },
    pos = { x = 0, y = 0 },
    rarity = 3,
    cost = 20,
    blueprint_compat = true,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    effect = nil,
    atlas = 'theshow',


    calculate = function(self, card, context)
        if context.selling_card and context.card.config.center.key == 'j_ring_master' then
            if not context.blueprint then
                -- Incrémente correctement
                card.ability.extra.x_mult = card.ability.extra.x_mult + card.ability.extra.x_mult_mod

                return {
                    card = card,
                    message = localize('k_upgrade_ex'),
                    colour = G.C.RED
                }
            end
        end
        if not (context.individual or context.repetition) and context.other_joker and context.other_joker.ability.name == "Showman" and self ~= context.other_joker then
            shakecard(context.other_joker)
            return {
                message = localize{type='variable',key='a_xmult',vars={card.ability.extra.x_mult}},
                colour = G.C.RED,
                x_mult = card.ability.extra.x_mult
            }
        end
    end,

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.x_mult }, key = self.key}
    end

}