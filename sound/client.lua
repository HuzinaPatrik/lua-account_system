local sounds = {}
soundActive = false

local inhover
local currentMusic, randomMusic
local loginMusics = {
	'Login Music';
};

function startLoginSound()
    randomMusic = math.random(1, 1);
    currentMusic = randomMusic
    sounds["element"] = playSound('files/login-music.mp3', true)
    soundActive = true
    --addEventHandler("onClientRender", root, onSoundPlayRender, true, "low-5")
    --addEventHandler("onClientRender", root, drawnSoundMultipler, true, "low-5")
    --addEventHandler("onClientRender", root, drawExtraButtons, true, "low-5")
end

function stopLoginSound()
    --removeEventHandler("onClientRender", root, drawExtraButtons)

    if isTimer(a) then
        killTimer(a)
    end
    if isElement(sounds["element"]) then
        destroyElement(sounds["element"])
        sounds["element"] = nil
    end
    soundActive = false
    
    --removeEventHandler("onClientRender", root, drawnSoundMultipler)
    --removeEventHandler("onClientRender", root, onSoundPlayRender)
end

--[[
function roundedRectangle(x, y, w, h, borderColor, bgColor, postGUI)
	if (x and y and w and h) then
		if (not borderColor) then
			borderColor = tocolor(0, 0, 0, 180)
		end
		if (not bgColor) then
			bgColor = borderColor
		end
		dxDrawRectangle(x, y, w, h, bgColor, postGUI);
		dxDrawRectangle(x + 2, y - 1, w - 4, 1, borderColor, postGUI);
		dxDrawRectangle(x + 2, y + h, w - 4, 1, borderColor, postGUI);
		dxDrawRectangle(x - 1, y + 2, 1, h - 4, borderColor, postGUI);
		dxDrawRectangle(x + w, y + 2, 1, h - 4, borderColor, postGUI);
        
        --Sarkokba pötty:
        dxDrawRectangle(x + 0.5, y + 0.5, 1, 2, borderColor, postGUI); -- bal felső
        dxDrawRectangle(x + 0.5, y + h - 1.5, 1, 2, borderColor, postGUI); -- bal alsó
        dxDrawRectangle(x + w - 0.5, y + 0.5, 1, 2, borderColor, postGUI); -- bal felső
        dxDrawRectangle(x + w - 0.5, y + h - 1.5, 1, 2, borderColor, postGUI); -- bal alsó
	end
end


function drawnSoundMultipler()    
    if page ~= "Unknown" then
        inhover = nil
        roundedRectangle(sx/2 - 330/2, sy - 70, 330, 50, tocolor(217, 124, 14, math.min(220, alpha or 255)), tocolor(217, 124, 14, math.min(220, alpha or 255)))
        dxDrawImage(sx/2 - 360/2, sy - 75, 360, 55, f .. "sound-wallpaper.png", 0,0,0, tocolor(255,255,255, alpha or 255))
        local pos = sx/2 - 113 + ((113 + 111) * saveJSON["soundVolume"])
        dxDrawLine(sx/2 - 113 - 1, sy - 44, pos - 1, sy - 44, tocolor(156, 156, 156, math.min(220, alpha or 255)), 3)
        --dxDrawRectangle(sx/2 - 113, sy - 48, 113 + 111, 8)
        dxDrawImage(pos - 32/2, sy - 44 - 32/2, 32, 32, f .. "sound-pointer.png", 0,0,0, tocolor(156, 156, 156, alpha or 255))
        dxDrawText(math.floor(saveJSON["soundVolume"] * 100) .. "%", sx/2 + (330/2 - 25), sy - 67, sx/2 + (330/2 - 25), sy - 70 + 50, tocolor(255,255,255,alpha or 255), 1, fonts["default-regular"], "center", "center")
        
        local posx, posy, sx, sy = 10, sy - 60, 270, 50

		--exports['pb_job']:createBlur(posx, posy, sx, sy , 200)
		dxDrawRectangle(posx, posy, sx, sy , tocolor(33, 33, 33, 200))
		dxDrawBorder(posx, posy, sx, sy, 2, tocolor(33, 33, 33, 150))

		dxDrawRectangle(posx + 2, posy + 2, 46, 46 , tocolor(22, 22, 22, 120))

		startsound = '';
		stopSound = '';
		sound = '';
		
		left = '';
		right = '';
        volume = '';
        
        local font = exports['cr_fonts']:getFont("FontAwesome", 12)
        local font2 = exports['cr_fonts']:getFont("FontAwesome", 16)
        local iconsBig = exports['cr_fonts']:getFont("FontAwesome", 18)

		dxDrawText(sound, posx + 24, posy + 13, posx + 24, 0, tocolor(200, 200, 200, 255), 0.82, iconsBig, 'center', 'top')

		if isInSlot(posx + 74 +  135, posy + 7, 16, 16) then
            inhover = 1
			dxDrawText(left, posx + 74 +  140, posy + 7, posx + 74 +  140, 0, tocolor(61, 122, 188, 255), 0.55, font2, 'center', 'top')
		else
			dxDrawText(left, posx + 74 +  140, posy + 7, posx + 74 +  140, 0, tocolor(200, 200, 200, 255), 0.55, font2, 'center', 'top')
		end

		if isInSlot(posx + (74 + 40) +  130, posy + 7, 16, 16) then
            inhover = 2
			dxDrawText(right, posx + (74 + 40) +  140, posy + 7, posx + (74 + 40) +  140, 0, tocolor(61, 122, 188, 255), 0.55, font2, 'center', 'top')
		else
			dxDrawText(right, posx + (74 + 40) +  140, posy + 7, posx + (74 + 40) +  140, 0, tocolor(200, 200, 200, 255), 0.55, font2, 'center', 'top')
		end

		if isSoundPaused(sounds["element"]) then
			if isInSlot(posx + (74 + 20) +  135, posy + 7, 15, 15) then
                inhover = 3
				dxDrawText(startsound, posx + (74 + 20) +  140, posy + 7, posx + (74 + 20) +  140, 0, tocolor(124, 197, 118, 255), 0.55, font2, 'center', 'top')
			else
				dxDrawText(startsound, posx + (74 + 20) +  140, posy + 7, posx + (74 + 20) +  140, 0, tocolor(200, 200, 200, 255), 0.55, font2, 'center', 'top')
			end
		else
			if isInSlot(posx + (74 + 20) +  135, posy + 7, 15, 15) then
                inhover = 4
				dxDrawText(stopSound, posx + (74 + 20) +  140, posy + 7, posx + (74 + 20) +  140, 0, tocolor(210, 49, 49, 255), 0.55, font2, 'center', 'top')
			else
				dxDrawText(stopSound, posx + (74 + 20) +  140, posy + 7, posx + (74 + 20) +  140, 0, tocolor(200, 200, 200, 255), 0.55, font2, 'center', 'top')
			end		
		end

		musicName = loginMusics[currentMusic]
		musicVolume = saveJSON["soundVolume"];
		pointpos = posx + 55 + (musicVolume * 200)
		linergb = {124, 197, 118};
		if (musicVolume * 100) >= 0 and (musicVolume * 100) < 35 then
			linergb = {210, 49, 49};
		elseif (musicVolume * 100) >= 35 and (musicVolume * 100) < 70 then
			linergb = {255, 168, 0};
		else
			linergb = {124, 197, 118};
		end
		dxDrawText(volume, posx + 55 + 2, posy + 8, 0,0, tocolor(200, 200, 200,255),0.55, font2, 'left', 'top')
		dxDrawText(math.ceil(musicVolume * 100) .. "%", posx + 80, posy + 6, 0,0, tocolor(230, 230, 230,255),0.8, font, 'left', 'top')
		
		dxDrawText(musicName, posx + 140, posy - 21, posx + 140,0, tocolor(230, 230, 230,255),0.8, font, 'center', 'top')
		
		roundedRectangle(posx + 55, posy + 35, 200, 5, tocolor(22, 22, 22, 100))
		
		r, g, b = unpack(linergb);
		roundedRectangle(posx + 55, posy + 35, (musicVolume * 200), 5, tocolor(r, g, b, 100))
		dxDrawCircle(pointpos, posy + 36, 8, 0, 360, tocolor(200, 200, 200, 255), tocolor(200, 200, 200, 255), 64, 1)
    end
end

function sounds.onClick(b, s)
--    outputChatBox(page)
    if page == "Login" or page == "Register" or page == "RPTest" then
        if b == "left" and s == "down" then
            local posx, posy, sx, sy = 10, sy - 60, 270, 50
            if isInSlot(posx + 55, posy + 30, 200, 15) then
                if lastClickTick + 500 > getTickCount() then
                    return
                end
                
                playSound("files/bubble.mp3")
                local cx, cy = getCursorPosition()
                local soundVolume = (cx - (posx + 55)) / (200)
                saveJSON["soundVolume"] = soundVolume
                setSoundVolume(sounds["element"], soundVolume)
                soundClick = true
                
                lastClickTick = getTickCount()
            elseif inhover == 1 then -- left
                if currentMusic - 1 >= 1 then
                    currentMusic = currentMusic - 1
                    if isElement(sounds["element"]) then
                        destroyElement(sounds["element"])
                    end
                    sounds["element"] = playSound('http://music.caseroleplay.com/' .. currentMusic .. '.mp3', true)
                    a = setTimer(
                        function()
                            setSoundVolume(sounds["element"], saveJSON["soundVolume"])
                        end, 350, 1
                    )
                else
                    currentMusic = 5
                    if isElement(sounds["element"]) then
                        destroyElement(sounds["element"])
                    end
                    sounds["element"] = playSound('http://music.caseroleplay.com/' .. currentMusic .. '.mp3', true)
                    a = setTimer(
                        function()
                            setSoundVolume(sounds["element"], saveJSON["soundVolume"])
                        end, 350, 1
                    )
                end
            elseif inhover == 2 then -- right
                if currentMusic + 1 <= 5 then
                    currentMusic = currentMusic + 1
                    if isElement(sounds["element"]) then
                        destroyElement(sounds["element"])
                    end
                    sounds["element"] = playSound('http://music.caseroleplay.com/' .. currentMusic .. '.mp3', true)
                    a = setTimer(
                        function()
                            setSoundVolume(sounds["element"], saveJSON["soundVolume"])
                        end, 350, 1
                    )
                else
                    currentMusic = 1
                    if isElement(sounds["element"]) then
                        destroyElement(sounds["element"])
                    end
                    sounds["element"] = playSound('http://music.caseroleplay.com/' .. currentMusic .. '.mp3', true)
                    a = setTimer(
                        function()
                            setSoundVolume(sounds["element"], saveJSON["soundVolume"])
                        end, 350, 1
                    )
                end
            elseif inhover == 3 then -- stop
                setSoundPaused(sounds["element"], false)
            elseif inhover == 4 then -- play
                setSoundPaused(sounds["element"], true)
            end
        elseif b == "left" and s == "up" then
            if soundClick then
                soundClick = false
            end
        end
    end
end
addEventHandler("onClientClick", root, sounds.onClick)

local minX = 265
local maxX = 65

addEventHandler("onClientCursorMove", root, 
    function(_, _, x, y)
        if soundClick then
            --outputChatBox("X: "..x.." | MaxX: "..maxX.." | MinX: "..minX)
            if x >= maxX and x <= minX then
                --outputChatBox("asd")
                local soundVolume = (x - (65)) / (200)
                saveJSON["soundVolume"] = soundVolume
                --outputChatBox("asd>> "..soundVolume)
                setSoundVolume(sounds["element"], soundVolume)
            end
        end
    end
)

local sx2, sy2 = guiGetScreenSize();
local bx, by = sx2, sy2

local boxes = 40;
local startColor, endColor = {150, 150, 150}, {255, 255, 255}
function onSoundPlayRender()
    if isElement(sounds["element"]) and not isSoundPaused(sounds["element"]) then
        local soundFFT = getSoundFFTData(sounds["element"], 8192, 256) or {};
        if (soundFFT) then
            local l = sx2/2 - bx/2
            local t = sy2/2 + by/2
            local w = bx/boxes

            local soundVolume = saveJSON["soundVolume"];
            local multipler = 2.0 * (soundVolume)
            for i = 0, boxes do
            	if (soundFFT) ~= nil then
            		local numb = soundFFT[i] or 0
                	local sr = (numb * multipler) or 0

	                if sr > 0 then
		                local r, g, b = interpolateBetween(startColor[1], startColor[2], startColor[3], endColor[1], endColor[2], endColor[3], sr, "Linear")
		                dxDrawRectangle(l + (i*w), t, w, -1 * sr * 256, tocolor(r, g, b, 240))
		            end
		        end
            end
        end
    end
end]]