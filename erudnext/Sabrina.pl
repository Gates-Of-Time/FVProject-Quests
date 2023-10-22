sub EVENT_SIGNAL {
  if($signal == 1) {
    quest::start(23);
  }
  elsif($signal == 2) {
    quest::stop();
  }
}
