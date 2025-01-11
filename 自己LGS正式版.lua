--1.跳箱子 = jump_Box
Jump_Box = 0
--2.连点左键 = mouse1
Left_click_Continuously = 0
--3.炼狱 = lianyu
lianyu = 0
--4.小工具 = adget
    --[[
        打印当前鼠标坐标 = Print_Mouse_Coordinates
        数字分割线 = Digital_Dividing_line
        数字分割线上所用的数字 = Digital_Dividing_line_Number
    --]]
Print_Mouse_Coordinates = 0
Digital_Dividing_line = 0
Digital_Dividing_line_Number = 0
--5.删除LGS上没用的命令 = Lgs
Lgs = 0
--6.瞬狙 = Fps_Instant_Sniping_Switch
Fps_Instant_Sniping_Switch = 0
----------------------------------------------------------------------------------------------------------
Fps_Instant_Sniping = false  --瞬狙开关
EnablePrimaryMouseButtonEvents(true)
function OnEvent(event, arg)

	function ifif(argarg,F)
		if (event == "MOUSE_BUTTON_PRESSED" and arg == argarg) then
			F()
		end
	end

	--1111111111111111111111111111111111111111111111111111111111111111
	ifif(Jump_Box,CFJB)

	CFJB = function()
		ClearLog()
		PressKey("spacebar")
		Sleep(184)
		ReleaseKey("spacebar")
		Sleep(440)
		PressKey("spacebar")
		Sleep(120)
		PressKey("lctrl")
		Sleep(80)
		ReleaseKey("spacebar") 
		Sleep(32)
		ReleaseKey("lctrl") 
		OutputLogMessage(" Executed : \n  1.jumpbox \n")
		end
	--22222222222222222222222222222222222222222222222222222222222222222
	ifif(Left_click_Continuously,CFLC)

	CFLC = function()
		repeat	
			PressMouseButton(1)	
			Sleep(math.random(121,136))
			ReleaseMouseButton(1)
			Sleep(math.random(21, 36))
		until IsMouseButtonPressed(Left_click_Continuously)
	end
	--33333333333333333333333333333333333333333333333333333333333333333
	ifif(lianyu,CFLY)
    
	local sleep1 = {math.random(100,185),math.random(100,185),math.random(85,250),math.random(100,185),math.random(100,185)}
    --sleep1[1] = math.random(100,185)
    --sleep1[2] = math.random(100,185)
    --sleep1[3] = math.random(85,250)
    --sleep1[4] = math.random(100,185)
    --sleep1[5] = math.random(100,185)
	local sleep2 = {}
	sleep2[1] = math.random(10,36)

	CFLY = function()
		repeat	
			PressMouseButton(1)
			Sleep(sleep1[math.random(1,5)])
			ReleaseMouseButton(1)
			Sleep(math.random(10,36))
		until not IsMouseButtonPressed(lianyu)
	end
	--444444444444444444444444444444444444444444444444444444444444444444
	ifif(Print_Mouse_Coordinates,PMC)

	PMC = function()
		x, y = GetMousePosition()
		OutputLogMessage("Mouse is at %d, %d\n", x, y)
	end


	ifif(Digital_Dividing_line,DDL)
	DDL = function()

		name =tostring(Digital_Dividing_line_Number)

		if (Digital_Dividing_line_Number < 10) then
			for i=1,70 do
				PressAndReleaseKey(tostring(Digital_Dividing_line_Number))
			end
        --end
		elseif (Digital_Dividing_line_Numberr >= 10 and Digital_Dividing_line_Number < 100) then
			for i=1,35 do
				PressAndReleaseKey(string.sub(name,1,1))
				PressAndReleaseKey(string.sub(name,2,2))
			end
        --end
		elseif (Digital_Dividing_line_Number >= 100) then
 			OutputLogMessage("Wait until there are really 100 pieces of code that belong to me - by zcy ")
		end
	end
	--5555555555555555555555555555555555555555555555555555555555555555555555
	ifif(Lgs,Lgs_Delete)

	index = 1
	Lgs_Delete = function()
		local a = 10
		local b = 25

		x, y = GetMousePosition()

		repeat
			index = index + 1
			MoveMouseTo(15750, 25831)
			Sleep(a)
			PressAndReleaseMouseButton(3)
			Sleep(b)
			MoveMouseTo(16941, 28018)
			Sleep(a)
			PressAndReleaseMouseButton(1)
			Sleep(b)
			MoveMouseTo(31308, 32528)
			Sleep(a)
			PressAndReleaseMouseButton(1)
			Sleep(b)
		until index >= 10

		MoveMouseTo(x,y)

		ClearLog()
		OutputLogMessage(" Executed : 4.lgs \n")
	end
	--6666666666666666666666666666666666666666666666666666666666666666666666
	ifif(Fps_Instant_Sniping_Switch,Instant_Sniper_Switch)

	Instant_Sniper_Switch = function()
		Fps_Instant_Sniping = not Fps_Instant_Sniping
		if Fps_Instant_Sniping then
			OutputLogMessage("Fps_Instant_Sniping_Switch = on \n")
		else
			OutputLogMessage("Fps_Instant_Sniping_Switch = off \n")
		end
	end

	if (event == "MOUSE_BUTTON_PRESSED" and arg == 0 and Fps_Instant_Sniping) then
			PressMouseButton(3)
			Sleep(math.random(5,63))
			PressMouseButton(1)
			Sleep(math.random(90,102))
			ReleaseMouseButton(3)
			Sleep(math.random(3,58))
			ReleaseMouseButton(1)
    --else
        --if (event == "MOUSE_BUTTON_PRESSED" and arg == 1) then
            --PressMouseButton(1)
        --else
            --ReleaseMouseButton(1)
        --end
	end
	--7777777777777777777777777777777777777777777777777777777777777777777777
end
----------------------------------------------------------------------------------------------------------