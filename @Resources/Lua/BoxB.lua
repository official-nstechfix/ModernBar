function Initialize()
    local Position = tonumber(SKIN:GetVariable('Position'))
	local Icons = tonumber(SKIN:GetVariable('Icons'))
	if Icons == 0 then
	SKIN:Bang('!SetOption' , 'BackGroundShape' , 'Shape' , 'Rectangle 0,0,(#Skin.W#*#Scale#),(#Skin.H#*#Scale#),(#Round#*#Scale#) | StrokeWidth 0 | Fill Color #BackGroundColor#')
	end
    if Position == LC then
	    SKIN:Bang('!SetOption' , 'Shortcut1.Image' ,'X'  ,'(20*#Scale#)')
    end
	if Position == BC then
		SKIN:Bang('!SetOption' , 'Shortcut1.Image' ,'X'  ,'(20*#Scale#)')
	end
end	