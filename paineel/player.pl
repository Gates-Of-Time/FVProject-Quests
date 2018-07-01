#:: The only way into Paineel is through hard-coded values on character create.  Zone points have been removed.  
#:: This is how we will move the player to the evil hut in Tox, and bind them, if they have created an evil Erudite

sub EVENT_ENTERZONE {
	#:: Reset the player's bind point to a location in Tox (ZoneID 38)
	$client->SetBindPoint(38,-751.86,1093.01,-46.54);
	#:: Move the player to Tox
	quest::movepc(38,-751.86,1093.01,-46.54,221);
}
