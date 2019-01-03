sub EVENT_ITEM_CLICK {
    if ($itemid == 11668) {
        $client->DeleteItemInInventory($slotid);
        quest::castspell(1823, $userid);
        quest::summonitem(11669);
    }
    elsif ($itemid == 11669) {
        $client->DeleteItemInInventory($slotid);
        quest::castspell(1824, $userid);
        quest::summonitem(11668);
    }
}
