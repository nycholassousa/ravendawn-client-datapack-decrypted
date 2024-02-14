-- chunkname: @/modules/game_house/util.lua

function isAreasOverlaping(from, to, from1, to1)
	local x1 = from.x
	local x2 = to.x
	local l1 = x1
	local r1 = x1

	if x2 - x1 + 1 < 0 then
		l1 = x2
	else
		r1 = x2
	end

	local l2 = from1.x
	local r2 = to1.x

	if to1.x - from1.x + 1 < 0 then
		l2 = to1.x
	else
		r2 = to1.x
	end

	if r2 < l1 or r1 < l2 then
		return false
	end

	local t1 = from.y
	local b1 = from.y

	if to.y - from.y + 1 < 0 then
		t1 = to.y
	else
		b1 = to.y
	end

	local t2 = from1.y
	local b2 = from1.y

	if to1.y - from1.y + 1 < 0 then
		t2 = to1.y
	else
		b2 = to1.y
	end

	if b2 < t1 or b1 < t2 then
		return false
	end

	return true
end

function isInArea(pos, from, to)
	return pos.x >= from.x and pos.y >= from.y and pos.z >= from.z and pos.x <= to.x and pos.y <= to.y and pos.z <= to.z
end

function isAround(from, to, from1, to1)
	for z = from.z, to.z do
		for x = from.x - 1, to.x + 1 do
			for y = from.y - 1, to.y + 1 do
				local isDiagonal = x == from.x - 1 and y == from.y - 1 or x == to.x + 1 and y == from.y - 1 or x == to.x + 1 and y == to.y + 1 or x == from.x - 1 and y == to.y + 1

				if not isDiagonal and (x == from.x - 1 or y == from.y - 1 or x == to.x + 1 or y == to.y + 1) and isInArea({
					x = x,
					y = y,
					z = z
				}, from1, to1) then
					return true
				end
			end
		end
	end

	return false
end

function isDiagonal(from, to, from1, to1)
	for z = from.z, to.z do
		for x = from.x - 1, to.x + 1 do
			for y = from.y - 1, to.y + 1 do
				local isDiagonal = x == from.x - 1 and y == from.y - 1 or x == to.x + 1 and y == from.y - 1 or x == to.x + 1 and y == to.y + 1 or x == from.x - 1 and y == to.y + 1

				if isDiagonal and isInArea({
					x = x,
					y = y,
					z = z
				}, from1, to1) then
					return true
				end
			end
		end
	end

	return false
end
