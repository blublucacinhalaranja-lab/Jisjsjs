function onCreatePost()
	makeLuaText('EventText', nil, screenWidth, 0, 550)
	if downscroll then setProperty('EventText.y', 20) end
	setTextSize('EventText', 32)
	addLuaText('EventText')
end

local lyrics = {
	"Well",
	"Well that's",
	"Well that's the",
	"Well that's the first",
	"Well that's the first wind",
	"Well that's the first wind I",
	"Well that's the first wind I e",
	"Well that's the first wind I ever",
	"Well that's the first wind I ever heard",
	"Well that's the first wind I ever heard\nwith",
	"Well that's the first wind I ever heard\nwith a",
	"Well that's the first wind I ever heard\nwith a sense",
	"Well that's the first wind I ever heard\nwith a sense of",
	"Well that's the first wind I ever heard\nwith a sense of hu",
	"Well that's the first wind I ever heard\nwith a sense of humor!",
}
local selector = 1

function opponentNoteHit()
	if curBeat >= 231 and curBeat <= 244 then
		setTextString('EventText', lyrics[selector])
		selector = selector + 1
	end
end

function onBeatHit()
	if curBeat == 244 then
		setTextString('EventText', '')
	end
end