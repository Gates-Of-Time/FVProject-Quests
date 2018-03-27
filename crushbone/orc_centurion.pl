sub EVENT_COMBAT {
    #:: Set a scalar variable for random aggro text
    my $random = int(rand(100));
    #:: When entering combat
    if ($combat_state == 1) {
        if ($random <= 30) {
            quest::say("Death!! Death to all who oppose the Crushbone orcs!!");
        }
        if ($random > 30 && $random <= 65) {
            quest::say("Hail, Emperor Crush!!");
        } 
        if ($random > 65) {
            quest::say("Fall before the might of Clan Crushbone!!");
        }
    }
}

# Converted to Perl by SS
