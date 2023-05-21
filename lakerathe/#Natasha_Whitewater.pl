# NPC:11162 Natasha Whitewater, Cleric Epic 1.0 Quest NPC
sub EVENT_SPAWN
{
	quest::settimer("NatashaDepop", 300); # Start timer to despawn after 5 minutes
	quest::shout("The Triumvirate of Water has decreed your fate, Shmendrik Lavawalker!! I am here to deliver said fate!!");
    quest::signalwith(51012,99,1000); # NPC: #Natasha_Whitewater
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
  # 28046 :  Damaged Goblin Crown
  if (plugin::check_handin(\%itemcount,28046=>1)) {
    quest::summonitem(28047); # 28047  Ornate Sea Shell
	quest::say("I will have this crown returned to the Riptide Goblins immediately!  Should you ever come across an Erudite named Omat Vastsea, give him this sea shell.  The waters of Norrath shimmer with awareness of your deeds here today!");
	quest::depop();
  }

  plugin::return_items(\%itemcount); # return unused items
}

sub EVENT_SIGNAL {
  if ($signal == 199) {
	quest::say("Enough!! Your existence has come to an end!!");
	quest::say("This conflict has been destined by the waters of the Triumvirate!!");
  }
}