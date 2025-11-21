return
    descriptions = {
        Joker = {
                j_thmc_the_show = {
                    name = "The Show",
                    text = {
                        {
                            "This joker gives {X:mult,C:white} X#{x_mult}# {} Mult",
                            "Per showman in the jokers slot"
                            "when another Showman Joker is sold",
                            "incrases by x1",
                            "curent {X:mult,C:white} X#1# {} Mult"
                        }
                    },
                },
            },
        },

    misc = {   
        -- do note that when using messages such as: 
        -- message = localize{type='variable',key='a_xmult',vars={current_xmult}},
        -- that the key 'a_xmult' will use provided values from vars={} in that order to replace #1#, #2# etc... in the localization file. 
    dictionary = {
        a_chips="+#1#",
        a_chips_minus="-#1#",
        a_hands="+#1# Hands",
        a_handsize="+#1# Hand Size",
        a_handsize_minus="-#1# Hand Size",
        a_mult="+#1# Mult",
        a_mult_minus="-#1# Mult",
        a_remaining="#1# Remaining",
        a_sold_tally="#1#/#2# Sold",
        a_xmult="X#1# Mult",
        a_xmult_minus="-X#1# Mult",
    }
    }