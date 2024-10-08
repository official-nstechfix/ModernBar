function Initialize()
    local pos = SKIN:GetVariable('Position')
        SKIN:Bang('!Draggable', '0')
        local posX = string.sub(pos, 2, 2)
        local posY = string.sub(pos, 1, 1)
        local xpad = SKIN:GetVariable('xpad')
        local ypad = SKIN:GetVariable('ypad')
        local MonitorIndex = SKIN:GetVariable('MonitorIndex')
        local sax = SKIN:GetVariable('WORKAREAX@' .. MonitorIndex)
        local say = SKIN:GetVariable('WORKAREAY@' .. MonitorIndex)
        local saw = SKIN:GetVariable('WORKAREAWIDTH@' .. MonitorIndex)
        local sah = SKIN:GetVariable('WORKAREAHEIGHT@' .. MonitorIndex)
        moveX = 0
        moveY = 0
        anchorX = 0
        anchorXD = 0
        anchorY = 0
        anchorYD = 0

        if posX == 'L' then moveX = sax + xpad
        elseif posX == 'C' then
            moveX = (sax + saw / 2)
            anchorX = "50%"
            anchorXD = 0.5
        elseif posX == 'R' then
            moveX = (sax + saw - xpad)
            anchorX = "100%"
            anchorXD = 1
        end

        if posY == 'T' then moveY = say + ypad
        elseif posY == 'C' then
            moveY = (say + sah / 2)
            anchorY = "50%"
            anchorYD = 0.5
        elseif posY == 'B' then
            moveY = (say + sah - ypad)
            anchorY = "100%"
            anchorYD = 1
        end

        SKIN:Bang('!SetWindowPosition ' .. moveX .. ' ' .. moveY .. ' ' .. anchorX .. ' ' .. anchorY)
		end
	