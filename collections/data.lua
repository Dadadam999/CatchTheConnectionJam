local M = {}

M.GAME_OVER = false

M.ADEPTS = {}
M.BATTERY = 0
M.BATTERY_MAX = 100
M.MINUS_BIRD = -1
M.STARLINK_PLUS = 1

M.BUILD1 = vmath.vector3(170, 250, 180) -- x - начало дома, y - конец дома, z - ввысота дома
M.BUILD2 = vmath.vector3(370, 550, 180)
M.BUILD3 = vmath.vector3(670, 850, 180)

M.BUILD1_COUNT_ADEPTS = 0
M.BUILD2_COUNT_ADEPTS = 0
M.BUILD3_COUNT_ADEPTS = 0
M.PLAYER_ROOF = 0
M.PRESSF = false

M.BUILD_ADEPT_MAX = 4

function M.is_game_over()
	if	M.BUILD1_COUNT_ADEPTS >= M.BUILD_ADEPT_MAX and
		M.BUILD2_COUNT_ADEPTS >= M.BUILD_ADEPT_MAX and
		M.BUILD3_COUNT_ADEPTS >= M.BUILD_ADEPT_MAX then
		return true
	end
	
	return false
end

function M.gen_seed()
	math.randomseed(os.clock() * 10000);
end


function M.reset()

	M.GAME_OVER = false
	M.BATTERY = 0
	M.BATTERY_MAX = 100
	M.MINUS_BIRD = -1
	M.STARLINK_PLUS = 1

	M.BUILD1_COUNT_ADEPTS = 0
	M.BUILD2_COUNT_ADEPTS = 0
	M.BUILD3_COUNT_ADEPTS = 0
	M.PLAYER_ROOF = 0
	M.PRESSF = false

	M.BUILD_ADEPT_MAX = 4
	
	for i=1, #M.ADEPTS  do
		M.ADEPTS[i] = nil
	end
end

return M