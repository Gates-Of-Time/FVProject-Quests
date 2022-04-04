sub EVENT_SAY { 
  if($text=~/Hail/i){
    quest::say("And a fine day to you, too, $name! What is it that brings you here? Fortune? Adventure? In either case. it will be more fun than the duty I have. I am to acquire what scrolls I can for the High Council of Erudin. And you're also in luck, as I seek the services of a mighty adventurer like yourself. Do you wish to [aid me in my duty]?");
  }
  if($text=~/aid you in your duty/i){
    quest::say("Then you will do this for me. Venture beyond this outpost to the most distant lands and the darkest dungeons. Within them. the creatures with the greatest power will have scrolls. The residents here will be able to give you general locations of the most dangerous places. I wish to obtain the scrolls of Atol's Spectral Shackles, Tears of Druzzil, Inferno of Al'Kabor, and lastly, Pillar of Frost. Make haste, as the High Council cannot be kept waiting! Fear not. I shall [reward] you well.");
  }
  if($text=~/reward/i){
    quest::say("I am not empty-handed. I have already located some of the most rare scrolls. I'll part with one of my four for what you return to me. Fare thee well!");
  }
}

sub EVENT_ITEM {
	#:: Match a 19315 - Spell: Atol`s Spectral Shackles
  if (plugin::takeItems(19315 => 1)) {
    quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!"); 
		#:: Choose a random 19329 - Spell: Tears of Solusek, 19320 - Spell: Abscond, 19324 - Spell: Thunderbolt or 19317 - Spell: Tishan`s Discord
		quest::summonitem(quest::ChooseRandom(19329,19320,19324,19317));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
  }  
	#:: Match a 19322 - Spell: Inferno of Al`Kabor
  elsif (plugin::takeItems(19322 => 1)) {
    quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!"); 
		#:: Choose a random 19329 - Spell: Tears of Solusek, 19320 - Spell: Abscond, 19324 - Spell: Thunderbolt or 19317 - Spell: Tishan`s Discord
		quest::summonitem(quest::ChooseRandom(19329,19320,19324,19317));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
  }  
	#:: Match a 19318 - Spell: Pillar of Frost
  elsif (plugin::takeItems(19318 => 1)) {
    quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!"); 
		#:: Choose a random 19329 - Spell: Tears of Solusek, 19320 - Spell: Abscond, 19324 - Spell: Thunderbolt or 19317 - Spell: Tishan`s Discord
		quest::summonitem(quest::ChooseRandom(19329,19320,19324,19317));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
  }  
	#:: Match a 19319 - Spell: Tears of Druzzil
  elsif (plugin::takeItems(19319 => 1)) {
    quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!"); 
		#:: Choose a random 19329 - Spell: Tears of Solusek, 19320 - Spell: Abscond, 19324 - Spell: Thunderbolt or 19317 - Spell: Tishan`s Discord
		quest::summonitem(quest::ChooseRandom(19329,19320,19324,19317));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
  }

	#:: Return unused items
	plugin::returnUnusedItems();
}
