function event_spawn(e)
	eq.set_proximity(e.self:GetX() - 40, e.self:GetX() + 40, e.self:GetY() - 40, e.self:GetY() + 40);
end

function event_enter(e)
	e.self:MovePC(51, 2643, 2419, 97, 376.5);
end
