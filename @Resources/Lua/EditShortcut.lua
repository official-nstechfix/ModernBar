function Initialize()
    local Icons = tonumber(SKIN:GetVariable('Icons'))
	local Resource = SKIN:GetVariable('@')
	if Icons >= 12 then
	SKIN:Bang('!SetOption' , 'Shortcut12.Image' , 'X' , '(12*#Scale#)')
	SKIN:Bang('!SetOption' , 'Shortcut12.Image' , 'Y' , '(40*#Scale#)r')
	print('Icons are Greater Than 12')
	end 
	if Icons >= 23 then
	SKIN:Bang('!SetOption' , 'Shortcut23.Image' , 'X' , '(12*#Scale#)')
	SKIN:Bang('!SetOption' , 'Shortcut23.Image' , 'Y' , '(40*#Scale#)r')
	print('Icons are Greater Than 22')
	end
	if Icons >= 0 then
	SKIN:Bang('!SetOption' , 'Shortcut1.Image' , 'Y' , '(50*#Scale#)')
	SKIN:Bang('!SetOption' , 'Shortcut1.Image' , 'X' , '(12*#Scale#)')
	print('Shrtcut1 Is Set at Config')
	end 
end	