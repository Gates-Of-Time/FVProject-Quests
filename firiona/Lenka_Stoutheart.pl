sub EVENT_SAY {
  if ($text=~/hail/i) {
    quest::say("We're just kidding with you, kid. Heh. Although they are making heroes kinda small these days. Hey, you [want to see something interesting]?");
  }
}