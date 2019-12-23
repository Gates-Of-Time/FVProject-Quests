function event_spawn(e)
	eq.set_proximity(e.self:GetX()-30, e.self:GetX()+30, e.self:GetY()-30, e.self:GetY()+30);
end

function event_enter(e)
	e.other:MovePC(51, 2643, 2419, 97, 376.5);
end
