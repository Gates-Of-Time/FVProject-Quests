sub EVENT_ITEM{
  if($item1 == 18904){
    quest::say("I have no words for the gratitude I feel. So many of our young ones have been captured by the filthy orcs. Please, take this for saving my sister.");
    quest::exp(30000);
    quest::ding();
    my $random = int(rand(5));
    if($random == 0){
      quest::summonitem(2012); } #boots
    if($random == 1){
      quest::summonitem(2004); } #tunic
    if($random == 2){
      quest::summonitem(2006); } #cloak
    if($random == 3){
      quest::summonitem(2005); } #shoulderpads
    if($random == 4){
      quest::summonitem(2011); } #leggings
  }
}
