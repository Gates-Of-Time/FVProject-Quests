sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Lower your voice, $race. These tomes hold many secrets as well as curses. Say the wrong word loudly enough and you may end up a frog, dead, or worse. Heed my warning for I will not repeat it.");
	}
	elsif ($text=~/blue flame/i) {
		quest::emote("'s face twists into an expression of complete confusion. The librarian says, 'The Ritual? Of the Blue Flame? Yes I know of it. But why wou..never mind. The ritual is fairly simple. The sacrifice is [flayed] and thrown into the fire just before death overcomes it. The flaying brings out an almost euphoric state of hatred and despisal. It's this that feeds the flame. The influence of our Father blues the flame and allows it to melt our adamantium.");
	}
	elsif ($text=~/flayed/i) {
		quest::say("The flaying is done by our priests and the Denouncer. Flaying itself is used in many other rituals as well. For instance, the skin of a flayed goblin can be used to record a misdeed. The perpetrator records the misdeed upon the skin, an ancient practice which allows the victim to wreak [vengeance] upon the one who wronged them, or their ancestors. The perpetrator shows strength by allowing the victim a chance at vengeance, even though the victim is usually dead.");
	}
	elsif ($text=~/vengeance/i) {
		quest::say("Vengeance can only be wrought if the victim is given the goblin skin. Since the victim is usually dead it's not much of a danger. But..it has been known to happen. Ironically, this vengeance is possible through the use of the Blue Flame. This flame can act as a doorway to the nether realm, to [summon] the spirit of a victim. On the skin is recorded the House name of the victim and the reason for the deed.");
	}
	elsif ($text=~/summon/i) {
		quest::say("Only the Denouncer can call forth a vengeful spirit from the flames. But before he can do so, he'll need blood from a member of the victim's House. Once the blood is cast into the flames, the spirit will emerge only for a short time before the negative pull of the other world draws it back. Why do you ask so many questions on this? Do you have one of these skins?");
	}
	elsif ($text=~/yes/i) {
		quest::say("Ahh, well I'll assume if you could read it you wouldn't be asking these questions. Fortunately for you I do have the ability to read these skins and will do so for only one star ruby. These spirits will often reward those who give them their vengeance. With my translation you may find the name of the House. Hand me the skin and a star ruby and we'll see.");
	}
	elsif ($text=~/denouncer ixtaz sent me/i) {
		quest::emote("stiffens at the mention of the title. His eyes dart back and forth about the room before speaking to you, his voice almost inaudible. He says, 'Why are you here? What do you want of me? I am nothing but a lowly librarian. I've already paid my debt, I have nothing else to give.'");
	}
	elsif ($text=~/ritual/i) {
		quest::emote("'s face twists into an expression of complete confusion. The librarian says, 'The Ritual? Of the Blue Flame? Yes I know of it. But why wou..never mind. The ritual is fairly simple. The sacrifice is [flayed] and thrown into the fire just before death overcomes it. The flaying brings out an almost euphoric state of hatred and despisal. It's this that feeds the flame. The influence of our Father blues the flame and allows it to melt our adamantium.'");
	}
}

sub EVENT_ITEM {
	#:: Match a 18401 - Scroll of Flayed Goblin Skin and a 10032 - Star Ruby
	if (plugin::takeItems(18401 => 1, 10032 => 1)) {
		quest::emote("takes the scroll and removes an ornate magnifying glass from a pocket. After some examination and many frowns along with interjections of 'Hmmm,' he hands the scroll back to you and says, 'Unlucky for you indeed. The name of the House has been removed. This can only happen when the House itself is wiped out by another House. All record of that House is destroyed if the attacking house is successful. You still have a chance though. Many House refugees find homes in other Houses. The Everliving Mayong is known to take in any Teir'Dal rabble. Try his castle.");
		#:: Give a 18401 - Scroll of Flayed Goblin Skin
		quest::summonitem(18401);
		#:: Grant a small amount of experience, based on level
		$client->AddLevelBasedExp(1, 30);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
