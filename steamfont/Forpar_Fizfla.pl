sub EVENT_SAY { 
  	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		if ($text=~/hail/i) {
			quest::say("Get out you pesky $race! I don't need any $race germs! Out, ye filthy beast!");
		}
		if ($text=~/mystical instrument/i) {
			quest::say("I have made many mystical instruments in the past. Each one seemed to be better then the last. I have always had a dream of building the world's best lute, but I have yet to find someone brave enough to gather the components needed to make the instrument.");
		}
		if ($text=~/components/i) {
			quest::say("To make a mystical lute I will first need to make several pieces. If you bring me the backbone of an ancient fishman, a strong tentacle from one of the long lost amalgyms, and a petrified skull of a lycanthrope I may be able to create the head and neck of the instrument. If you go out and gather these things, make sure to bring me the note I gave you or I might forget who you are. I am getting quite old, you know.");
		}
		if ($text=~/next pieces/i) {
			quest::say("The next pieces are a little harder to come by than the last set. To make the body of an instrument that will last for ages to come, I need something very special. The scales of a big red dragon and the scales of a big white dragon will make it unbreakable, as well as giving it a unique look. Some metal bits will allow me to hold the body together. Please, if you gather up these things, bring them to me as soon as possible. I have not felt this good in years!");
		}
		if ($text=~/one more to go/i) {
			quest::say("The lute has a head and body. The only thing missing is a set of strings that will never break! I have heard rumors of a living dead poison dragon in the lands of Kunark. If your were somehow able to get your hands on his guts, I could finish the lute. You would have to bring me the head, the body and the undead dragon gut for lute strings!");
		}
  	}
}

sub EVENT_ITEM {
  	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 20378 - Note to Forpar Fizfla
		if (plugin::takeItems(20378 => 1)) {
			quest::say("So you know Vedico! How is the lass? If Vedico would give you the time of day, you must be something special. What can I do for you? I hope you have not come to have me make another [mystical instrument].");
			#:: Give a 20380 - Forpar's Note to Himself
			quest::summonitem(20380);
			#:: Ding!
			quest::ding();
		}
		#:: Match a 20380 - Forpar's Note to Himself, a 20524 - Kedge Backbone, a 20525 - Petrified Werewolf Skull and a 5520 - Amygdalan Tendril
		elsif (plugin::takeItems(20380 => 1, 20524 => 1, 20525 => 1, 5520 => 1)) {
			quest::say("Wow! I didn't think a $race like you would be able to gather all of those things.");
			quest::emote("rambles around and works with small tools for a good ten minutes before handing you a very fine looking lute head.");
			#:: Give a 20535 - Mystical Lute Head
			quest::summonitem(20535);
			#:: Ding!
			quest::ding();
			quest::say("Now, do you want to gather the next pieces for me?");
		}
		#:: Match a 11602 - White Dragon Scales, a 11622 - Red Dragon Scales and a 16905 - Metal Bits
		elsif (plugin::takeItems(11602 => 1, 11622 => 1, 16905 => 1)) {
			quest::say("Wooooooo! You are doing a wonderful job, $name. I wish I could go out and gather these things myself.' Forpar sits back down at his desk and pulls several very strange looking tools out. Eventually he looks up at you and says, 'The body is done! Only one more piece to go!");
			#:: Give a 20536 - Mystical Lute Body
			quest::summonitem(20536);
			#:: Ding!
			quest::ding();
		}
		#:: Match a 20535 - Mystical Lute Head, a 20536 - Mystical Lute Body and a 20526 - Undead Dragongut Strings
		elsif (plugin::takeItems(20535 => 1, 20536 => 1, 20526 => 1)) { #Mystical Lute Head, Mystical Lute Body, Undead Dragongut Strings
			quest::say("Goodness! I can hardly contain myself! This will be my greatest creation ever!");
			quest::emote("sits down, slides the lute head into place and screws it together. After a few minutes, he begins to string the lute with the gut strings of the poison dragon. A wonderful sound fills the air as he strums the lute once and hands it to you.");
			quest::say("I hope you find a good use for that! I bet you could play it from the mountaintops and the people below would hear you. Thank you, $name, for making my lifelong dream come true!");
			#:: Give a 20538 - Mystical Lute
			quest::summonitem(20538);
			#:: Ding!
			quest::ding();
		}
		else {
			quest::say("I do not need this.");
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}