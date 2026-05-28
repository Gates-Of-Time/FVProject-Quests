sub EVENT_SAY {
    if ($text =~ /hail/i) {
        quest::say("Hey there scrawny! I lead the finest team of laborers in all of Kael Drakkel! We've got little use for a weak creature like yourself, but if you want to help us out I've got a task for you.");
    }
    elsif ($text =~ /task/i) {
        quest::say("Those pansy dragon would bees in the Tunarean Court have become quite the nuisance lately. The deaths of Lord Gossimerwind and Lord Prismwing would certainly put an end to the nuisance for a time. Bring me their wings as proof of their deaths.");
    }
}

sub EVENT_ITEM {
    #:: Return unused items
    plugin::returnUnusedItems();
}
