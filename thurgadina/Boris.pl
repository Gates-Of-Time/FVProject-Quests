sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Hey. you der! Dis privot propertee! Is you here to do sumthin bad to me master Valdicar?");
  }
}