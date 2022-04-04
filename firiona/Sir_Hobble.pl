sub EVENT_SAY {
  if ($text=~/hail/i) {
    quest::emote("holds a cracked monocle up to his squinty eye. 'I say!! A talking bear!! Squire Fuzzmin, come and take a gander at this rare find. The wonders never cease in the land of Kunark!!'");
    quest::unique_spawn(84312, 0, 0, 1985, -2243, -75);  # Spawn Squire_Fuzzmin for Wurmslayer quest
    #:: Create a scalar variable to store the NPC's entity ID
    $EntID = $npc->GetID();
    #:: Send a signal containing the NPC's entity ID after a five second delay
    quest::signalwith(84312, $EntID, 5);
  }
}