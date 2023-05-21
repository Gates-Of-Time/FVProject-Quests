sub EVENT_SPAWN
{
	#:: Start timer to despawn after 5 minutes
	quest::settimer("NatashaDepop", 300);
	quest::shout("The Triumvirate of Water has decreed your fate, Shmendrik Lavawalker!! I am here to deliver said fate!!");
	#:: Send a signal '99' to Lake Rathetear >> Shmendrik_Lavawalker (51012) with a 1 second delay
    quest::signalwith(51012, 99, 1000);
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("The Riptide goblins must have their crown returned to them.  If you would be so kind as to give me the crown I will make sure that it reaches them.  Hopefully they are capable enough to repair the damage that has been done to it.");
	}
}

sub EVENT_TIMER
{
	if ($timer == "NatashaDepop")
	{
		# Player did not hand item in within 5 minutes, leave.
		quest::depop();
	}
}

sub EVENT_ITEM
{
	#:: Match a 28046 - Damaged Goblin Crown
	if (plugin::takeItems(28046 => 1)) {
		#:: Give a 28047 - Ornate Sea Shell
		quest::summonitem(28047);
		quest::say("I will have this crown returned to the Riptide Goblins immediately!  Should you ever come across an Erudite named Omat Vastsea, give him this sea shell.  The waters of Norrath shimmer with awareness of your deeds here today!");
		#:: Natasha despawns after you give her the Ornate Sea Shell
		quest::depop();
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_SIGNAL {
	#:: Match a signal '199' from Lake Rathetear >> Shmendrik_Lavawalker (51012)
	if ($signal == 199) {
		quest::say("Enough!! Your existence has come to an end!!");
		quest::say("This conflict has been destined by the waters of the Triumvirate!!");
	}
}