-- chunkname: @/modules/gamelib/position.lua

Position = {}
Position.directionOffset = {
	[North] = {
		y = -1,
		x = 0
	},
	[East] = {
		y = 0,
		x = 1
	},
	[South] = {
		y = 1,
		x = 0
	},
	[West] = {
		y = 0,
		x = -1
	},
	[SouthWest] = {
		y = 1,
		x = -1
	},
	[SouthEast] = {
		y = 1,
		x = 1
	},
	[NorthWest] = {
		y = -1,
		x = -1
	},
	[NorthEast] = {
		y = -1,
		x = 1
	}
}

function Position.equals(pos1, pos2)
	return pos1.x == pos2.x and pos1.y == pos2.y and pos1.z == pos2.z
end

function Position.greaterThan(pos1, pos2, orEqualTo)
	if orEqualTo then
		return pos1.x >= pos2.x or pos1.y >= pos2.y or pos1.z >= pos2.z
	else
		return pos1.x > pos2.x or pos1.y > pos2.y or pos1.z > pos2.z
	end
end

function Position.lessThan(pos1, pos2, orEqualTo)
	if orEqualTo then
		return pos1.x <= pos2.x or pos1.y <= pos2.y or pos1.z <= pos2.z
	else
		return pos1.x < pos2.x or pos1.y < pos2.y or pos1.z < pos2.z
	end
end

function Position.isInRange(pos1, pos2, xRange, yRange)
	return xRange >= math.abs(pos1.x - pos2.x) and yRange >= math.abs(pos1.y - pos2.y) and pos1.z == pos2.z
end

function Position.isInArea(pos, from, to)
	return pos.x >= from.x and pos.y >= from.y and pos.z >= from.z and pos.x <= to.x and pos.y <= to.y and pos.z <= to.z
end

function Position.isValid(pos)
	return pos.x ~= 65535 or pos.y ~= 65535 or pos.z ~= 255
end

function Position.distance(pos1, pos2)
	return math.sqrt(math.pow(pos2.x - pos1.x, 2) + math.pow(pos2.y - pos1.y, 2))
end

function Position.manhattanDistance(pos1, pos2)
	return math.abs(pos2.x - pos1.x) + math.abs(pos2.y - pos1.y)
end

function Position.greaterDistance(pos1, pos2)
	return math.max(math.abs(pos2.x - pos1.x), math.abs(pos2.y - pos1.y))
end

function Position.tostring(pos1)
	return pos1.x .. "," .. pos1.y .. "," .. pos1.z
end

function Position.generateHash(pos)
	return pos.x + 65536 * pos.y + 4294967296 * pos.z
end

function Position.canSee(pos1, pos2)
	local dimension = modules.game_interface.getMapPanel():getVisibleDimension()
	local width, height = math.ceil(dimension.width / 2), math.ceil(dimension.height / 2) + 1

	if Position.isInRange(pos1, pos2, width, height) then
		return true
	end

	return false
end

function Position.getNextPosition(pos, direction, steps)
	local ret = table.copy(pos)
	local offset = Position.directionOffset[direction]

	if offset then
		steps = steps or 1
		ret.x = ret.x + offset.x * steps
		ret.y = ret.y + offset.y * steps
	end

	return ret
end

function Position.isMapPosition(pos)
	return pos.x >= 0 and pos.y >= 0 and pos.z >= 0 and pos.x < 65535 and pos.y < 65535 and pos.z <= 15
end

function Position.goDown(pos, floors)
	floors = floors or 1

	return {
		x = pos.x - 1,
		y = pos.y - 1,
		z = pos.z + 1
	}
end

function Position.goUp(pos, floors)
	floors = floors or 1

	return {
		x = pos.x + 1,
		y = pos.y + 1,
		z = pos.z - 1
	}
end
