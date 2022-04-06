

function event_trade(e)
	local item_lib = require("items");
	local qglobals = eq.get_qglobals(e.self,e.other);

	if (qglobals["Fatestealer"] == "1" and item_lib.check_turn_in(e.trade, {item1 = 10243})) then
		e.self:Say("Well done, " .. e.other:GetName() .. ". Galdorin had it coming, so don't feel too guilty about your part in this.");
		eq.set_global("Fatestealer_gal", "1", 5, "F");
		local qglobals = eq.get_qglobals(e.self, e.other);
		if (qglobals["Fatestealer_gal"] == "1" and qglobals["Fatestealer_mar"] == "1" and qglobals["Fatestealer_lyt"] == "1") then
			e.self:Say("");
			eq.set_global("Fatestealer_bard", "1", 5, "F");
		else
			e.other:SummonItem(9590); -- Item: Notice to Cease and Desist
		end
	elseif (qglobals["Fatestealer"] == "1" and item_lib.check_turn_in(e.trade, {item1 = 10239,item2 = 52416})) then
		e.self:Say("");
		eq.set_global("Fatestealer_mar", "1", 5, "F");
		local qglobals = eq.get_qglobals(e.self, e.other);
		if (qglobals["Fatestealer_gal"] == "1" and qglobals["Fatestealer_mar"] == "1" and qglobals["Fatestealer_lyt"] == "1") then
			e.self:Say("");
			eq.set_global("Fatestealer_bard", "1", 5, "F");
		else
			e.other:SummonItem(9590); -- Item: Notice to Cease and Desist
		end
	elseif (qglobals["Fatestealer"] == "1" and item_lib.check_turn_in(e.trade, {item1 = 10246})) then
		e.self:Say("Excellent, Lythe has been silenced.");
		eq.set_global("Fatestealer_lyt", "1", 5, "F");
		local qglobals = eq.get_qglobals(e.self, e.other);
		if (qglobals["Fatestealer_gal"] == "1" and qglobals["Fatestealer_mar"] == "1" and qglobals["Fatestealer_lyt"] == "1") then
			e.self:Say("That should do the trick. I think our contact will speak with you now. His name is Lirpin, and he is a paladin that works for the Wayfarer's Brotherhood. I hear he led an expedition into Kuua recently, but his current location is anyone's guess. Good Luck.");
			eq.set_global("Fatestealer_bard", "1", 5, "F");
		else
			e.other:SummonItem(9590); -- Item: Notice to Cease and Desist
		end
	end
	item_lib.return_items(e.self, e.other, e.trade)
end

