-- chunkname: @/modules/corelib/ui/easing.lua

Easing = {}

function Easing.Linear(k)
	return k
end

Easing.Quadratic = {
	In = function(k)
		return k * k
	end,
	Out = function(k)
		return k * (2 - k)
	end,
	InOut = function(k)
		k = k * 2

		if k < 1 then
			return 0.5 * k * k
		else
			k = k - 1

			return -0.5 * (k * (k - 2) - 1)
		end
	end,
	Bezier = function(k, c)
		c = c or 1

		return c * 2 * k * (1 - k) + k * k
	end
}
Easing.Cubic = {
	In = function(k)
		return k * k * k
	end,
	Out = function(k)
		k = k - 1

		return 1 + k * k * k
	end,
	InOut = function(k)
		k = k * 2

		if k < 1 then
			return 0.5 * k * k * k
		else
			k = k - 2

			return 0.5 * (k * k * k + 2)
		end
	end
}
Easing.Quartic = {
	In = function(k)
		return k * k * k * k
	end,
	Out = function(k)
		k = k - 1

		return 1 - k * k * k * k
	end,
	InOut = function(k)
		k = k * 2

		if k < 1 then
			return 0.5 * k * k * k * k
		else
			k = k - 2

			return -0.5 * (k * k * k * k - 2)
		end
	end
}
Easing.Quintic = {
	In = function(k)
		return k * k * k * k * k
	end,
	Out = function(k)
		k = k - 1

		return 1 + k * k * k * k * k
	end,
	InOut = function(k)
		k = k * 2

		if k < 1 then
			return 0.5 * k * k * k * k * k
		else
			k = k - 2

			return 0.5 * (k * k * k * k * k + 2)
		end
	end
}
Easing.Sinusoidal = {
	In = function(k)
		return 1 - math.cos(k * math.pi / 2)
	end,
	Out = function(k)
		return math.sin(k * math.pi / 2)
	end,
	InOut = function(k)
		return 0.5 * (1 - math.cos(math.pi * k))
	end
}
Easing.Exponential = {
	In = function(k)
		if k == 0 then
			return 0
		else
			return math.pow(1024, k - 1)
		end
	end,
	Out = function(k)
		if k == 1 then
			return 1
		else
			return 1 - math.pow(2, -10 * k)
		end
	end,
	InOut = function(k)
		if k == 0 then
			return 0
		elseif k == 1 then
			return 1
		end

		k = k * 2

		if k < 1 then
			return 0.5 * math.pow(1024, k - 1)
		else
			k = k - 1

			return 0.5 * (-math.pow(2, -10 * k) + 2)
		end
	end
}
Easing.Circular = {
	In = function(k)
		return 1 - math.sqrt(1 - k * k)
	end,
	Out = function(k)
		k = k - 1

		return math.sqrt(1 - k * k)
	end,
	InOut = function(k)
		k = k * 2

		if k < 1 then
			return -0.5 * (math.sqrt(1 - k * k) - 1)
		else
			k = k - 2

			return 0.5 * (math.sqrt(1 - k * k) + 1)
		end
	end
}
Easing.Elastic = {
	In = function(k)
		if k == 0 then
			return 0
		elseif k == 1 then
			return 1
		end

		k = k - 1

		return -math.pow(2, 10 * k) * math.sin((k - 0.1) * (2 * math.pi) / 0.4)
	end,
	Out = function(k)
		if k == 0 then
			return 0
		elseif k == 1 then
			return 1
		end

		return math.pow(2, -10 * k) * math.sin((k - 0.1) * (2 * math.pi) / 0.4) + 1
	end,
	InOut = function(k)
		k = k * 2

		if k < 1 then
			k = k - 1

			return -0.5 * math.pow(2, 10 * k) * math.sin((k - 0.1) * (2 * math.pi) / 0.4)
		else
			k = k - 1

			return 0.5 * math.pow(2, -10 * k) * math.sin((k - 0.1) * (2 * math.pi) / 0.4) + 1
		end
	end
}
Easing.Back = {
	s2 = 2.5949095,
	s = 1.70158,
	In = function(k)
		return k * k * ((Easing.Back.s + 1) * k - Easing.Back.s)
	end,
	Out = function(k)
		k = k - 1

		return k * k * ((Easing.Back.s + 1) * k + Easing.Back.s) + 1
	end,
	InOut = function(k)
		k = k * 2

		if k < 1 then
			return 0.5 * k * k * ((Easing.Back.s2 + 1) * k - Easing.Back.s2)
		else
			k = k - 2

			return 0.5 * (k * k * (Easing.Back.s2 + k + Easing.Back.s2 + 2))
		end
	end
}
Easing.Bounce = {
	In = function(k)
		return 1 - Easing.Bounce.Out(1 - k)
	end,
	Out = function(k)
		if k < 0.36363636363636365 then
			return 7.5625 * k * k
		elseif k < 0.7272727272727273 then
			k = k - 0.5454545454545454

			return 7.5625 * k * k + 0.75
		elseif k < 0.9090909090909091 then
			k = k - 0.8181818181818182

			return 7.5625 * k * k + 0.9375
		else
			k = k - 0.9545454545454546

			return 7.5625 * k * k + 0.984375
		end
	end,
	InOut = function(k)
		if k < 0.5 then
			return Easing.Bounce.In(k * 2) * 0.5
		else
			return Easing.Bounce.Out(k * 2 - 1) * 0.5 + 0.5
		end
	end
}
