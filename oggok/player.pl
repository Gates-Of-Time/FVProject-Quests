sub EVENT_CLICK_OBJECT {
	quest::say($objectid);
	#:: Match to the ogre cultural forge in Oggok by object ID
	if ($objectid == 673) {
		#:: Check to see if the player who clicked is a race other than Ogre
		if ($race ne "Ogre") {
			#:: Send the client a message in color 1 (gray)
			$client->Message(1,"The foul stench of Ogre overwhelms you as you open the forge...you stagger away, unable to use it.");
			#:: Close the object
			quest::close();
		} else {
			$client->Message(1,"Mmmm--dis smells just like home.");
		}
	}
}
