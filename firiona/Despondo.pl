sub EVENT_SAY {
  if ($text=~/Hail/i) { 
    quest::emote("looks a bit troubled. 'Welcome, Welcome adventurer, I am the wizard tutor Despondo, although few need tutorage around here. It would seem that this is no place for a student of any sorts. The lands of Kunark are quite deadly.'");
  }
  elsif ($text=~/wrong/i) { 
    quest::say("I was bound to this post by General Veredeth. I came to find the lost souls of my friends, but am needed here. I must find a fellow wizard to [rescue their souls].");
  }
  elsif ($text=~/rescue their souls/i) {
    quest::say("You will need the [three bottles of entrapment]. If you can find their remains in Kunark then you will give the bottle to the body and the soul shall enter. Return all three bottles and I shall give you the wizard spell [Brain Bite].");
  }
  elsif ($text=~/three bottles of entrapment/i) {
    quest::say("I will need three gems to prepare the bottles. I am afraid I left my currency within the Freeport Vault. You will have to get the gems I need: a peridot, an onyx and a star rose quartz then I will give you the bottles.");
  }
  elsif ($text=~/brain bite/i) {
    quest::say("Brain Bite is a concussion spell created by my former friends whose souls are now lost to Kunark. The blow to the inner brain of an enraged foe may just cause the loss of memory and lower their rage. If you want a copy you have to [rescue their souls].");
  }
  elsif ($text=~/where are their souls/i) {
    quest::say("I have had visions of their sourroundings. Hampton is in a forest of trees which rain oranges. Ryla fell within a great fortress of armored dog men. Mardon met his fate high in a palace above the jungle leaves.");
  }
}

sub EVENT_ITEM {
	#:: Match a 10027 - Onyx
	if (plugin::takeItems(10027 => 1)) {
    quest::say("This bottle is for the one called Hampton. If you look well, you can see his name. ");
		#:: Give a 12962 - Ornate Bottle
		quest::summonitem(12962);
		#:: Ding!
		quest::ding();		
	}
	#:: Match four 10021 - Star Rose Quartz
	elsif (plugin::takeItems(10021 => 1)) {
    quest::say("Identify this when the time comes. It is Ryla's prison.");
		#:: Give a 12964 - Ornate Bottle
		quest::summonitem(12964);
		#:: Ding!
		quest::ding();
	}
	#:: Match four 10028 - Peridot
	elsif (plugin::takeItems(10028 => 1)) {
    quest::say("This bottle is for Mardon. You may be able to identify his name upon it. ");
		#:: Give a 12963 - Ornate Bottle
		quest::summonitem(12963);
		#:: Ding!
		quest::ding();
	}
	#:: Match a 12967 - Bottle of Swirling Smoke, 12966 - Bottle of Swirling Smoke, 12965 - Bottle of Swirling Smoke
	elsif (plugin::takeItems(12967 => 1, 12966 => 1, 12965 => 1)) {
    quest::emote("embraces the bottles as if they were babes.");   
		quest::say("Rejoice my friends!! Your souls are safe. $name, you are a good wizard. You deserve to know the secret of concussion.");
		#:: Give a 12968 - Scroll of Brain Bite
		quest::summonitem(12968);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(101, 20);  #:: + Firiona Vie
		quest::faction(92, 20);   #:: + Emarald Warriors
		quest::faction(314, 20);  #:: + Storm Guard
		quest::faction(193, -60); #:: - Legions of Cabilis
		quest::faction(250, -60); #:: - Pirates of Guntak
		#:: Grant a large amount of experience
		quest::exp(100000);
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}

