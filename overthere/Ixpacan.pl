$key = $name . "-" . "skullcap";

sub EVENT_SAY {
     if($text=~/hail/i) {
          quest::say("Hmm. . .is there something I can help you with? I am far too [busy] to listen to your problems though so I take that back.");
     }
     elsif($text=~/busy/i) {
          quest::say("It is none of your concern unless you are truly gifted in the dark   art of necromancy. If so, you will have some form of proof to show me.");
     }
     elsif($text=~/wish to hear/i) {
          if(quest::get_data($key)) {
               quest::say("I have recently found a volume on summoning a great minion from the Great Library of Charasis but I can't find all of the needed items. Being as I am one of the [sages of Cabilis], I request you go and [collect these items] for me.");
          }
     }
     elsif($text=~/sages of cabilis/i) {
          if(quest::get_data($key)) {
               quest::say("Ah, they are all but a memory now. We used to be welcome within the city of Cabilis but our quest for greater power led to our exile. No matter now, go retrieve the items and you will be one of the chosen to walk beside greatness.");
          }
     }
     elsif($text=~/collect these items/i) {
          if(quest::get_data($key)) {
               quest::say("As you should broodling. The the first is a brittle bone, which was once used for reincarnations. The second item is a poisoned soul, this is from an iksar that died a cruel and twisted death. The death was so awful, it's spirit still roams around angry. The third you will find in the burning heat. The final item is a gem of reflection. I have yet to find someone that knows how to create one. Even those fools in Cabilis probably wouldn't know. Maybe you can locate that one yourself. Bring all of these items back to me and I shall do the rest.");
               #:: Give item 48041 - Ixpacan's Tome
               quest::summonitem(48041);
          }
     }
}

sub EVENT_ITEM {
     #:: Match a 48044 - Child of Charasis Remains and a 4267 - Necromancer Skullcap
     if (plugin::takeItems(48044 => 1, 4267 => 1)) {
          quest::say("I see now that I lack the skill necessary to control the Dark Arts. Maybe it would be wiser to allow another such as yourself to continue forward. Please accept this token as a reward in your mastering of the Dark Arts.");
          #:: Give item 48043 - Demi Lich Skullcap
          quest::summonitem(48043);
          #:: Ding!
          quest::ding();
          #:: Grant a moderate amount of experience
          quest::exp(20000);
     }
     #:: Match a 4267 - Necromancer Skullcap
     elsif (plugin::takeItems(4267 => 1)) {
          quest::say("Oh, I see you are truly gifted in the dark arts. Well I will explain my dilemma to you now if you [wish to hear].");
          #:: Give item 4267 - Necromancer Skullcap
          quest::summonitem(4267);
          
          quest::set_data($key, 1);
     }
     #:: Match a 48042 - Ixpacan's Tome
     elsif (plugin::takeItems(48042 => 1)) {
          quest::say("Wonderful! You have brought all of the items I have asked for. Your future seems very bright with the rest of the Sages. Step back now as I conjure the child of Charasis.");
          quest::emote("As Ixpacan starts his incantations, you can see an image begin to appear from the shadows.");
	     #:: Spawn Overthere >> child_of_Charasis (93189)
          quest::spawn2(93189,0,0,$x,$y + 5,$z,$h);
          quest::say("It's out of my control! Defeat it before it destroys us both!");
     }

     #:: Return unused items
     plugin::returnUnusedItems();
}
