sub EVENT_SAY {
 if($text=~/hail/i){
    quest::emote("looks upon you with evil eyes and you hear a horrid chatter. Hairs rise from the spider's thorax.");
    quest::say("Greetings, creature. What a fine meal you would make!");
    quest::attack($name);
    quest::say("You shall not take the tome from me!! I shall snack upon your blood-drained corpse.");
  }
}

sub EVENT_DEATH_COMPLETE {
  quest::signalwith(84319,0,0);
}