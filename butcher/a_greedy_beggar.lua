local followtarget;

function event_spawn(e)
	followtarget = nil;
	e.self:Say("Followtarget is " .. followtarget .. ".");
end

function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Hello there " .. e.other:GetName() .. ". I don't suppose you can spare some coins? I'm just a poor halfling that is far away from home. I can't afford anything to eat or drink. Anything you can offer me will be of help.");  -- response to all messages, even when following
		e.self:Say("Followtarget is " .. followtarget .. ".");
		if(followtarget == nil) then
			followtarget = e.other:GetID();
			e.self:Say("Followtarget is " .. followtarget .. ".");
			e.self:SetAppearance(0); -- Stand
			eq.set_timer("follow",5000);
			e.self:Say("Timer 'follow' set.");
		end
	end
end

function event_timer(e)
	if(e.timer == "follow" and eq.get_entity_list():GetClientByID(followtarget)) then
		e.self:Say("Timer 'follow' triggered.");
		eq.follow(followtarget); -- Follow the player who triggered the event
		e.self:Say("Followtarget is " .. followtarget .. ".");
	else
		e.self:Say("Timer 'follow' triggered.");
		e.self:Say("Followtarget is " .. followtarget .. ".");
		eq.stop_follow();
		e.self:Say("Stopping follow.");
		followtarget = nil;
		e.self:Say("Followtarget is " .. followtarget .. ".");
		eq.stop_timer("follow");
		e.self:Say("Timer 'follow' stopped.");
		e.self:SetAppearance(3); -- lying down
	end
end

function event_trade(e) -- Note that we are intentionally accepting any trade, as long as we are not following
	local item_lib = require("items");
	
	if(followtarget == nil or e.other:GetID() == followtarget) then
		e.self:Say("Followtarget is " .. followtarget .. ".");
		e.self:Say("Oh thank you. You are too kind to this poor halfling. Do you have anything else to give me?");
		e.self:SetAppearance(0); -- Stand
		followtarget = e.other:GetID();
		e.self:Say("Followtarget is " .. followtarget .. ".");
		eq.set_timer("follow",5000);
		e.self:Say("Timer 'follow' set.");
	else
		item_lib.return_items(e.self, e.other, e.trade)
		e.self:Say("Followtarget is " .. followtarget .. ", I do not want YOUR items.");
	end
end
