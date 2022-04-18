sub EVENT_SAY { 
    if ($text=~/Hail/i) {
        quest::say("Hello there. There seems to be some strange problems with the boats in this area. The Academy of Arcane Sciences has sent a small team of us to investigate them. If you need to [travel to Timorous] in the meantime, I can transport you to my companion there."); 
    }
    elsif ($text=~/travel to timorous/i) {
        quest::movepc(96, 3624.00, 5860.00, 1.08); 
    }
}
