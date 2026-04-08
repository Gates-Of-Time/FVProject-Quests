sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Greetings and welcome to Thurgadin, $name. Ye best watch yer step on the bridge there, it can be a bit slippery.");

    #:: Match a Thurgadin >> Guard_Baldvin (115132) on the entity list
    my $guard_baldvin = $entity_list->GetMobByNpcTypeID(115132);
    if (defined($guard_baldvin)) {
      $guard_baldvin->Say("Aye, we wouldn't want ye fallin into the pit now would we.");
    }
  }
}

sub EVENT_ITEM {
  quest::say("I have no need for this $name, you can have it back.");

  #:: Return unused items.
  plugin::returnUnusedItems();
}