sub EVENT_ITEM_CLICK_CAST {
    if ($itemid == 11668) {
        $client->DeleteItemInInventory($slotid);
        quest::summonitem(11669);
    }
    elsif ($itemid == 11669) {
        $client->DeleteItemInInventory($slotid);
        quest::summonitem(11668);
    }
}
