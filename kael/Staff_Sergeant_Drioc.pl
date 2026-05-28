sub EVENT_SAY {
  #:: Match if faction is worse than Indifferent
  if (($text =~ /hail|seeking work/i) && $faction > 5) {
    my $random = int(rand(3));

    if ($random == 0) {
      quest::say("I didn't know Slime could speak common.  Go back to the sewer before I lose my temper.");
    }
    elsif ($random == 1) {
      quest::say("Is that your BREATH, or did something die in here?  Now go away!");
    }
    else {
      quest::say("I wonder how much I could get for the tongue of a blithering fool?  Leave before I decide to find out for myself.");
    }
  }
  #:: Match if faction is Indifferent or better
  elsif (($text =~ /hail/i) && $faction <= 5) {
    quest::emote("glances over at you with a sneer and says, 'I have much to do and organize. If you have anything of importance to say you had best speak up now or leave before I lose my patience.'");
  }
  #:: Match if faction is Indifferent
  elsif (($text =~ /seeking work/i) && $faction == 5) {
    quest::say("You need to prove your dedication to our cause before I can discuss such matters with you.");
  }
  #:: Match if faction is better than Indifferent
  elsif (($text =~ /seeking work/i) && $faction < 5) {
    quest::emote("stops looking over his papers and takes a moment to size you up. You fight the urge to run in fear as the collosal humanoid considers you. After a moment he says, 'Very well. Our campaign to conquer the so called Tunarean Court has need of reinforcements. The Kromrif are already spread to thinly in the Eastern Wastes so mercenaries will have to do. Take these orders to the commanding officer in the field and follow his orders. Payment will be discussed after you complete your assignment.'");
    #:: Ding!
    quest::ding();
    #:: Give a 1702 - Mercenary Assignment
    quest::summonitem(1702);
  }
}

sub EVENT_ITEM {
  #:: Match a 1706 - Krofer's Requisition
  if (plugin::takeItems(1706 => 1)) {
    quest::emote("takes the note and begins reading. Seeing a certain passage, he squints and rereads, his brow furrowed. He glances over at you and says, 'Very well. I will assign you a squad lead by Corporal Hlash. They will rendezvous with you out in the field. Oh and take this back to Krofer.'");
    #:: Give a 1707 - Signed Requisition
    quest::summonitem(1707);
  }
  #:: Match a 1709 - Report of Failure
  elsif (plugin::takeItems(1709 => 1)) {
    quest::emote("reads over the report, his face begins to turn red with anger. Drioc shouts, 'How can this be?! I sent you a squad of some of our best trained men and you had them destroyed!! This was supposed to be a routine raid and you return in FAILURE!! I would crush you under my boot right now if I wasn't so angry but I think I'll send you to my finacier. YOU can explain what happened and why his investments have been lost. Now take your carcass out of here!'");
    #:: Give a 1709 - Report of Failure
    quest::summonitem(1709);
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}
