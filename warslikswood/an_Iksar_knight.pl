sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("wipes the sweat from his forehead and spits some flarefire seeds on the ground near your feet. 'Whew!! Good to be back and safe at the Cabilis Gate. The troopers will protect us.'");
	}
	elsif ($text=~/chalp diagram/i) {
		quest::emote("spits out some flarefire seeds. 'Great!! Sent to retrieve the Chalp diagram. I will give them to you, but I want you to do me a little favor first. I want you to [retrieve some spells] I lost. They are incorrectly scribed and useless, but I yearn for their return nonetheless.'");
	}
	elsif ($text=~/retrieve some spells/i) {
		quest::emote("spits flarefire seeds on you. 'Oops!! Sorry. Yeah!! You go to Chalp and get two incorrectly scribed spells which they grabbed from me. The third one, I threw in a river crossing by Chalp. It was in a bottle and probably drifted way down the river. Bring me all three and also a shovel and I will make it worth your while.'");
	}
	elsif ($text=~/flarefire seeds/i) {
		quest::emote("spits some flarefire seeds on your face. 'What? Interested in flarefire seeds? There you go. Ha!!'");
	}
}

sub EVENT_ITEM {
	#:: Match a 12492 - Misscribed Lifetap, a 12493 - Misscribed Gate, a 12494 - Scroll in a Bottle, and a 6026 - Shovel
	if (plugin::takeItems(12492 => 1, 12493 => 1, 12494 => 1, 6026 => 1)) {
		quest::emote("accidently swallows a mouthful of flarefire seeds. 'ACCCKK!!  I can't believe you did it!! Here is the Chalp diagram.'");
		#:: Give a 12496 - Chalp Diagram
		quest::summonitem(12496);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(442, 1);		#:: + Crusaders of Greenmist
		quest::faction(441, 1);		#:: + Legion of Cabilis
		#:: Grant a moderate amount of experience
		quest::exp(1000);
		#:: Depop with spawn timer active
		quest::depop_withtimer();
 	}
	#:: Match a 12492 - Misscribed Lifetap
	elsif (plugin::takeItems(12492 => 1)) {
		quest::emote("spits flarefire seeds on your chest. 'Listen up!! I asked for the misscribed spells; Fear, Lifetap and Gate, and also, a shovel.'");
		#:: Give a 12492 - Misscribed Lifetap
		quest::summonitem(12492);
	}
	#:: Match a 12493 - Misscribed Gate
	elsif (plugin::takeItems(12493 => 1)) {
		quest::emote("spits flarefire seeds on your chest. 'Listen up!! I asked for the misscribed spells; Fear, Lifetap and Gate, and also, a shovel.'");
		#:: Give a 12493 - Misscribed Gate
		quest::summonitem(12493);
	}
	#:: Match a 12494 - Scroll in a Bottle
	elsif (plugin::takeItems(12494 => 1)) {
		quest::emote("spits flarefire seeds on your chest. 'Listen up!! I asked for the misscribed spells; Fear, Lifetap and Gate, and also, a shovel.'");
		#:: Give a 12494 - Scroll in a Bottle
		quest::summonitem(12494);
	}
	#:: Match a 6026 - Shovel
	elsif (plugin::takeItems(6026 => 1)) {
		quest::emote("spits flarefire seeds on your chest. 'Listen up!! I asked for the misscribed spells; Fear, Lifetap and Gate, and also, a shovel.'");
		#:: Give a 6026 - Shovel
		quest::summonitem(6026);
	}	
	#:: Return unused items
	plugin::returnUnusedItems();
}
