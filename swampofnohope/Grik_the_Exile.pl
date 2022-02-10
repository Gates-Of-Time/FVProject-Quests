sub EVENT_SAY {
	if ($text=~/mission/i) {
		quest::say("If you have not noticed the new intelligent races that have found it's way to our land, you will see soon. They have built a small outpost far to the south along the ocean. If they go unchecked, their outpost will become a city from which they will cause us much discomfort. They are strong and have experienced [mercenaries] in their employ.");
	}
	elsif ($text=~/mercenaries/i) {
		quest::say("Yes. In particular, a company of mercenaries commanded by a human known as Streaven. He has personally thwarted an operation I was in charge of. I will make him pay for his interference. You will kill Streaven. But first you must [draw him out], as he is not a fool.");
	}
	elsif ($text=~/draw him out/i) {
		quest::say("While Streaven is not foolish he has made a mistake. He's taken a young and ambitious noble on as an officer in his company. This noble represents a source of funds and as such Streaven most likely will come to his aid if endangered. Our spies have reported that he has been implanted with some sort of device that will alert the commander of any danger. You must retrieve this [implant].");
	}
	elsif ($text=~/implant/i) {
		quest::say("The implant is buried deep within this noble's head. Retrieving it will most likely leave quite a traumatic wound. Once you have the implant you must take it to an agent that will be in the area. This agent is one of the Kotiz Brood, a necromancer. Her name is Vekis and she will be able to activate the implant and draw Streaven out. She will only appear after you have dispatched the noble and she will go back into hiding shortly there after, so you must [find her] quickly.");
	}
	elsif ($text=~/find her/i) {
		quest::say("She will be near one of our ancient statues along the coast. You need only hand her the implant for her to activate it. Once he is away from the guards you will have your chance. Bring me Streaven's Head and 3 rubies and you will have your reference for the Arcut. Remember that your perseverance is your greatest virtue and will carry you to victory always.");
	}
}

sub EVENT_ITEM {
	#:: Match a 14789 - Illegible Note: Breastplate
	if (plugin::takeItems(14789 => 1)) {
		quest::emote("snickers to himself and looks out over the swamp for a moment before saying, 'Perseverance is indeed our greatest virtue. Perhaps if we as warriors looked more to cultivate our virtue rather than to hoard glory our people would be rulers of this entire land. I will send you on a [mission] to learn of perseverance. If you complete it I will give you my reference.'");
	}
	#:: Match three 10035 - Ruby and a 14819 - Streaven's Head
	elsif (plugin::takeItems(10035 => 3, 14819 => 1)) {
		#:: This seems completely made up
		quest::say("Well done");
		#:: Give a 14783 - Glox Reference
		quest::summonitem(14783);
		#:: Ding!
		quest::ding();
		#:: Grant a large amount of experience
		quest::exp(10000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
