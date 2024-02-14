-- chunkname: @/modules/gamelib/math2d.lua

function deg2Rad(angle)
	return angle * math.pi / 180
end

function rad2Deg(angle)
	return angle * 180 / math.pi
end

function getDot(pos1, pos2)
	return pos1.x * pos2.x + pos1.y * pos2.y
end

function getMagnitude(pos)
	return math.sqrt(pos.x * pos.x + pos.y * pos.y)
end

function normalize(pos)
	local magnitude = getMagnitude(pos)

	if magnitude == 0 then
		return nil
	end

	return {
		x = pos.x / magnitude,
		y = pos.y / magnitude
	}
end

function getAngle(pos1, pos2)
	local npos1 = normalize(pos1)
	local npos2 = normalize(pos2)

	if not npos1 or not npos2 then
		return nil
	end

	local dot = getDot(npos1, npos2)
	local angle

	if dot == 0 then
		return 0
	else
		angle = math.acos(dot)
	end

	if pos1.y > pos2.y then
		angle = 2 * math.pi - angle
	end

	return rad2Deg(angle)
end
