function onCreate()
	makeAnimatedLuaSprite('power boost', 'power', (getProperty('dad.x') - 330), (getProperty('dad.y') + 150))
	addAnimationByPrefix('power boost', 'burst instance 1', 'burst', 24, false)
end

function onBeatHit()
	if curBeat == 247 then
		playSound('burst', 1)
		addLuaSprite('power boost', true)
		objectPlayAnimation('power boost', 'burst', false)
	end
end