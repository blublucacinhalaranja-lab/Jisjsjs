function onCreate()
	precacheImage('power')
	makeAnimatedLuaSprite('power boost', 'power', (getProperty('boyfriend.x') - 400), (getProperty('boyfriend.y') + 0))
	addAnimationByPrefix('power boost', 'burst instance 1', 'burst', 24, false)
end

function onBeatHit()
	if curBeat == 448 then
		playSound('burst', 1)
		addLuaSprite('power boost', true)
		objectPlayAnimation('power boost', 'burst', false)
	end
end