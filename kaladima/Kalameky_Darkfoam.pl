sub EVENT_ITEM{
  if(plugin::check_handin(\%itemcount, 18906 => 1)){
    quest::say("'Why, that..! Bah! Fine. Stupid as a newborn gob. She's not gonna get this, then. Hey, you might as well take it. It was gonna be her reward fer a job well done.'");
    quest::summonitem(23359);
    quest::exp(30000);
    quest::ding();
  }
  plugin::return_items(\%itemcount);
}
