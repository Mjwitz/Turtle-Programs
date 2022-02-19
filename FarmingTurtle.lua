function farm()
for k = 1, 9 do
	for e = 1, 9 do
		refule()
		if age()==7 then
			turtle.digDown()
			turtle.placeDown()
		end
		while turtle.suckDown() == true do
		turtle.suckDown()
		end
		if e ~=9 then
		turtle.forward()
		end
	end
	if k == 1 then
		leftTurnAround()
	elseif k == 3 then
		leftTurnAround()
	elseif k == 5 then
		leftTurnAround()
	elseif k == 7 then
		leftTurnAround()
	elseif k == 9 then
		turtle.turnLeft()
		turtle.turnLeft()
		go(8)
		turtle.turnLeft()
		go(8)
		turtle.turnRight()
		for t = 2, 15 do
			turtle.select(t)
			turtle.drop()
		end
		turtle.select(1)
		turtle.turnLeft()
		turtle.turnLeft()
	end
	if k == 2 then
		rightTurnAround()
	elseif k == 4 then
		rightTurnAround()
	elseif k == 6 then
		rightTurnAround()
	elseif k == 8 then
		rightTurnAround()
	end
end

end

function refule()
	if turtle.getFuelLevel() == 0 then
		for i = 1, 16 do -- loop through the slots
			turtle.select(i) -- change to the slot
				if turtle.refuel(0) then -- if it's valid fuel
				local halfStack = math.ceil(turtle.getItemCount(i)/2) -- work out half of the amount of fuel in the slot
				turtle.refuel(halfStack) -- consume half the stack as fuel
			end
		end
	end
	turtle.select(1)
end

function go(val)
	for kek = 1, val do
	turtle.forward
	end
end

function leftTurnAround()
	turtle.turnLeft()
	turtle.forward()
	turtle.turnLeft()
end

function rightTurnAround()
	turtle.turnRight()
	turtle.forward()
	turtle.turnRight()
end

function age()
	a,b = turtle.inspectDown()
		if a then
			return b.state.age
		end
end

while true do
farm()
end
