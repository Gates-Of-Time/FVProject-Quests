sub EVENT_ITEM_CLICK {
    if ($itemid == 11668) {
        quest::gmsay("you clicked your guantlets!");
        $client->DeleteItemInInventory($slotid);
        quest::gmsay("your item is deleted.");
        quest::castspell(1823, $userid);
        quest::gmsay("you cast a spell");
        quest::summonitem(11669);
    }
    elsif ($itemid == 11669) {
        quest::gmsay("you clicked your hammer!");
        $client->DeleteItemInInventory($slotid);
        quest::gmsay("your item is deleted.");
        quest::castspell(1824, $userid);
        quest::gmsay("you cast a spell");
        quest::summonitem(11668);
    }
}
