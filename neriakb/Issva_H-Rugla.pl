sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("If you're looking for chit chat you can bugger off. I'm here to sell supplies not company.");
	}
	elsif ($text=~/who.*king/i) {
		quest::say("The mighty empire of the Teir'Dal is ruled by King Naythox Thex.  All hail Thex!");
	}
	elsif ($text=~/who.*the dead/i) {
		quest::say("The Dead are the shadowknights and necromancers of Neriak.  They were formed by Queen Cristanos herself.  Even among the Teir'Dal they are feared and they keep to themselves within the Lodge of the Dead in the Third Gate.  I have heard they take orders only from the queen.");
	}
	elsif ($text=~/where.*lodge of the dead/i) {
		quest::say("The Dead are the shadowknights and necromancers of Neriak.  They were formed by Queen Cristanos herself.  Even among the Teir'Dal they are feared and they keep to themselves within the Lodge of the Dead in the Third Gate.  I have heard they take orders only from the queen.");
	}
	elsif ($text=~/who.*queen cristanos/i) {
		quest::say("Queen Cristanos is the queen of Neriak, of course!  She was the one who formed the necromancers and shadowknights into the guild called the Dead.");
	}
	elsif ($text=~/what.*indigo brotherhood/i) {
		quest::say("In the Commons Quarter can be found the Indigo Brotherhood, Teir'Dal warriors.  They are the armies of King Naythox Thex and serve as the trainers of the Dreadguard and dragoons.  Why the masters chose to build the Cauldron of Hate in that area and not the Third Gate is an amazement to me.");
	}
	elsif ($text=~/what.*cauldron of hate/i) {
		quest::say("In the Commons Quarter can be found the Indigo Brotherhood, Teir'Dal warriors.  They are the armies of King Naythox Thex and serve as the trainers of the Dreadguard and dragoons.  Why the masters chose to build the Cauldron of Hate in that area and not the Third Gate is an amazement to me.");
	}
	elsif ($text=~/what.*commons quarter/i) {
		quest::say("You are in the Commons Quarter.  This quarter is designated for all common Teir'Dal.  You can find an abundance of merchants as well as the arena and warriors guild here.");
	}
	elsif ($text=~/what.*warriors guild/i) {
		quest::say("Within this area you will find the Cauldron of Hate which is home to the Teir'Dal warriors.");
	}
#:: Newbie armor quest
#::	elsif ($text=~/materials/i){
#::		quest::say("Many species of dangerous creatures, the walking dead, and invading Deathfist Orcs inhabit the Nektulos Forest. You must defeat these creatures and undead in order to obtain the materials. The materials you seek depend on the piece of armor you desire. Do you desire to craft [gauntlets], [boots], a [bracer], a [helm], [greaves], [vambraces], or a [breastplate]?");
#::	}
#::	elsif ($text=~/gauntlets/i) {
#::		quest::say("To craft Orc Slayer Gauntlets you require two [silk thread], a cracked pyre beetle carapace, and two orc finger bones. Once you have the necessary components combine them in your Mail Assembly Kit with this Tattered Glove Pattern.");
#::		#:: Give a 19559 - Tattered Glove Pattern
#::		quest::summonitem(19559);
#::	}
#::	elsif ($text=~/boots/i) {
#::		quest::say("To craft Orc Slayer Boots you require two [silk thread], two cracked pyre beetle carapaces, and two orc foot bones. Once you have the necessary components combine them in your Mail Assembly Kit with this Tattered Boot Pattern.");
#::		#:: Give a 19561 - Tattered Boot Pattern
#::		quest::summonitem(19561);
#::	}
#::	elsif ($text=~/bracer/i) {
#::		quest::say("To craft an Orc Slayer Bracer you require a [silk thread], a cracked pyre beetle carapace, and an orc ulna bone. Once you have the necessary components combine them in your Mail Assembly Kit with this Tattered Bracer Pattern.");
#::		#:: Give a 19558 - Tattered Wristband Pattern
#::		quest::summonitem(19558);
#::	}
#::	elsif ($text=~/helm/i) {
#::		quest::say("To craft an Orc Slayer Helm you require two [silk thread], a cracked pyre beetle carapace, and an orc skull. Once you have the necessary components combine them in your Mail Assembly Kit with this Tattered Cap Pattern.");
#::		#:: Give a 19555 - Tattered Cap Pattern
#::		quest::summonitem(19555);
#::	}
#::	elsif ($text=~/greaves/i) {
#::		quest::say("To craft Orc Slayer Greaves you require three [silk thread], a pyre beetle carapace, two orc tibia, and an orc pelvis bone. Once you have the necessary components combine them in your Mail Assembly Kit with this Tattered Leggings Pattern.");
#::		#:: Give a 19560 - Tattered Pant Pattern
#::		quest::summonitem(19560);
#::	}
#::	elsif ($text=~/vambraces/i) {
#::		quest::say("To craft Ord Slayer Vambraces you require two [silk thread], a pyre beetle carapace, and two orc humerus bones. Once you have the necessary components combine them in your Mail Assembly Kit with this Tattered Sleeves Pattern.");
#::		#:: Give a 19557 - Tattered Sleeve Pattern
#::		quest::summonitem(19557);
#::	}
#::	elsif ($text=~/breastplate/i) {
#::		quest::say("To craft an Orc Slayer Breastplate you require four [silk thread], a pristine pyre beetle carapace, an orc sternum, and an orc ribcage. Once you have the necessary components combine them in your Mail Assembly Kit with this Tattered Tunic Pattern.");
#::		#:: Give a 19556 - Tattered Tunic Pattern
#::		quest::summonitem(19556);
#::	}
}

sub EVENT_ITEM {
#::  Newbie Armor quest
#::	#:: Match a 31753 - Request Form
#::	if (plugin::takeItems(31753 => 1)) {
#::		quest::say("So you are one of Jarrex's new recruits. You are to assist in the construction of the armor you will don as a new Warrior of the Indigo Brotherhood. I have assembled a kit that is used in the crafting of Orc Slayer Mail. You must travel beyond Neriak into the Nektulos Forest for the [materials] that compose the armor.");
#::		#:: Give a 17124 - Mail Assembly Kit
#::		quest::summonitem(17124);
#::	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
