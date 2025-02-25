--1.上箱子Jump_Box
Jump_Box = 0
--2.静音上箱子Low_Body_Jump_Box
Low_Body_Jump_Box = 0
--3.炼狱lianyu
lianyu = 4
--4.小工具gadget
    --[[
        获取鼠标当前位置坐标=Print_Mouse_Coordinates
        数字分隔线 = Digital_Dividing_line
        数字分割线所使用的数字 = Digital_Dividing_line_Number
    --]]
Print_Mouse_Coordinates = 0
Digital_Dividing_line = 0
Digital_Dividing_line_Number = 0
--5.一键删除LGS的那些罗列的没用的命令=Lgs
Lgs = 0
--6.瞬狙Fps_Instant_Sniping_Switch
Fps_Instant_Sniping_Switch = 0
--7.QQ飞车精灵浇水
QQ_Speed_Elf = 0
--8.CSGO连跳
CSGO_Jump = 0
--9.CSOL弑神左键
CSOL_KillG_LeftMB = 0
--10.CSOL弑神右键
CSOL_KillG_RightMB = 0
--11.CSOL星锤
CSOL_StarH = 0
--12.CSOL虎王
CSOL_TigerK = 0
--13.GTA5抢钱&连点左键
GTA5_Money = 0
--14.原神拾取
Genshin_F = 0
----------------------------------------------------------------------------------------------------------
Fps_Instant_Sniping = false  --来自第6个
GM = 0 --切换游戏代号:0是关闭所有,1是CF,2是CSGO,3是CSOL
EnablePrimaryMouseButtonEvents(true)
function OnEvent(event, arg)

    function ifif(argarg,F)
        if (event == "MOUSE_BUTTON_PRESSED" and arg == argarg) then
            F()
        end
    end
    
    function Oifif(argarg,F,Other)
        if (event == "MOUSE_BUTTON_PRESSED" and arg == argarg and Other) then
            F()
        end
    end
    if (event == "MOUSE_BUTTON_PRESSED" and arg == 5 and IsMouseButtonPressed(2)) then
        GM = GM + 1
        if GM == 4 then
            GM = 0
        end
        
        ClearLog()
        OutputLogMessage("GM = ")
        OutputLogMessage(GM)
        OutputLogMessage("\n")
        
        CF_Macro()
        CSGO_GTA5_Macro()
        Mihoyo_Macro()
        CSOL_Marco()
        Shutdown()
    end
    

    --0000000000000000000000000000000000000000000000000000000000000000000000
    Shutdown = function()
    
        if GM == 0 then
            PressKey("lshift")
            Sleep(50)
            PressKey("f13")
            Sleep(100)
            ReleaseKey("lshift")
            Sleep(50)
            ReleaseKey("f13")
            OutputLogMessage("Shutdown ALL \n")
        end
    end
    
    CF_Macro = function()

        if GM == 1 then
            lianyu = 4
            PressKey("lalt")
            Sleep(50)
            PressKey("f13")
            Sleep(100)
            ReleaseKey("lalt")
            Sleep(50)
            ReleaseKey("f13")
            OutputLogMessage("CF = ture \n")
        else
            lianyu = 0
            OutputLogMessage("CF = false \n")
        end
    end

    CSGO_GTA5_Macro = function()
        if GM == 2 then
            CSGO_Jump = 4
            GTA5_Money = 8
            PressKey("lctrl")
            Sleep(50)
            PressKey("f13")
            Sleep(100)
            ReleaseKey("lctrl")
            Sleep(50)
            ReleaseKey("f13")
            OutputLogMessage("CSGO = ture \n")
        else
            CSGO_Jump = 0
            GTA5_Money = 0
            OutputLogMessage("CSGO = false \n")
        end
    end
    
    Mihoyo_Macro = function()
        if GM == 3 then
            Genshin_F = 5
            GTA5_Money = 8
            PressKey("lalt")
            Sleep(50)
            PressKey("f15")
            Sleep(100)
            ReleaseKey("lalt")
            Sleep(50)
            ReleaseKey("f15")
            OutputLogMessage("Mihoyo = ture \n")
        else
            Genshin_F = 0
            GTA5_Money = 0
            OutputLogMessage("Mihoyo = false \n")
        end
    end
    
    CSOL_Marco = function()
        if GM == 10 then
            CSOL_KillG_LeftMB = 5
            CSOL_KillG_RightMB = 8
            CSOL_StarH = 7
            CSOL_TigerK = 4
            PressKey("lctrl")
            Sleep(50)
            PressKey("f15")
            Sleep(100)
            ReleaseKey("lctrl")
            Sleep(50)
            ReleaseKey("f15")
            OutputLogMessage("CSOL = ture \n")
        else
            CSOL_KillG_LeftMB = 0
            CSOL_KillG_RightMB = 0
            CSOL_StarH = 0
            CSOL_TigerK = 0
            OutputLogMessage("CSOL = false \n")
        end
    end
    --1111111111111111111111111111111111111111111111111111111111111111111111
    Oifif(Jump_Box,CFJB,CF)

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
        OutputLogMessage(" Executed :  1.jumpbox \n")
    end
    --2222222222222222222222222222222222222222222222222222222222222222222222
    Oifif(Low_Body_Jump_Box,CFLBJB,CF)
    CFLBJB = function()
        ClearLog()
        PressKey("lctrl")
        Sleep(50)
        PressKey("spacebar")
        Sleep(500)
        ReleaseKey("lctrl") 
        Sleep(84)
        ReleaseKey("spacebar")
        Sleep(25)
        PressKey("spacebar")
        Sleep(120)
        PressKey("lctrl")
        Sleep(80)
        ReleaseKey("spacebar") 
        Sleep(32)
        ReleaseKey("lctrl") 
        OutputLogMessage(" Executed :  2.Low_Body_Jump_Box \n")
    end
    --3333333333333333333333333333333333333333333333333333333333333333333333
    ifif(lianyu,CFLY2)
    
    
    local sleep1 = {
        math.random(90,110),
        math.random(90,110),
        math.random(90,110),
        math.random(90,110),
        math.random(87,120),
        math.random(85,130),
        math.random(80,140),
        math.random(200,800),
                    }
    local sleep2 = {
        math.random(10,30),
        math.random(20,40)
                    }
    local cfIndex = 1
    --Version.1-----------------------------------
    CFLY1 = function()
        repeat	
            PressMouseButton(1)
            -------------------
            if cfIndex <= 7 then
                Sleep(sleep1[cfIndex]) 
                cfIndex = cfIndex + 1
            end
            
            if cfIndex == 8 then
                if math.random() > 0.6 then 
                    Sleep(sleep1[cfIndex])
                    cfIndex = 1
                    OutputLogMessage("here!")
                else
                    cfIndex = 1
                end
            end
            -------------------
            ReleaseMouseButton(1)
            Sleep(sleep2[math.random(1,2)])
        until not IsMouseButtonPressed(lianyu)
        OutputLogMessage(" Executed :  3.lianyu \n")
    end
    --Version.1-----------------------------------
    local nextSleepCount = 0
    local targetCount = math.random(6, 10)
    --Version.2-----------------------------------
    local function getNextSleep()
        if nextSleepCount < targetCount then
            nextSleepCount = nextSleepCount + 1
            return math.random(90, 110)
        else
            nextSleepCount = 0
            targetCount = math.random(6, 10) 
            if math.random() > 0.6 then
                return math.random(400, 800)
            else
                return math.random(70, 90)
            end
        end
    end
    
    CFLY2 = function()
        repeat    
            PressMouseButton(1)
            Sleep(getNextSleep())
            ReleaseMouseButton(1)
            Sleep(sleep2[math.random(1,2)])
        until not IsMouseButtonPressed(lianyu)
        OutputLogMessage(" Executed :  3.lianyu \n")
    end
    --Version.2-----------------------------------
    --4444444444444444444444444444444444444444444444444444444444444444444444
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
        elseif (Digital_Dividing_line_Number >= 10 and Digital_Dividing_line_Number < 100) then
            for i=1,35 do
                PressAndReleaseKey(string.sub(name,1,1))
                Sleep(2)
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
        local a = 5
        local b = 20

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
        until index >= 5

        MoveMouseTo(x,y)

        ClearLog()
        OutputLogMessage(" Executed : 5.lgs \n")
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
    ifif(QQ_Speed_Elf,QQ_Speed)
 
    QQ_Speed = function()
        Elf = 20411
        for i=1,9 do
            --Elf = 20411
            MoveMouseTo(42717, Elf)
            Sleep(5)
            PressAndReleaseMouseButton(1)
            Sleep(250)
            MoveMouseTo(13061, 38116)
            Sleep(5)
            PressAndReleaseMouseButton(1)
            Sleep(250)
            MoveMouseTo(32652, 39346)
            Sleep(5)
            PressAndReleaseMouseButton(1)
            Sleep(250)
            Elf = Elf + 2500
        end
        OutputLogMessage(" Executed : 6.QQ_Speed_Elf \n")
    end
    --8888888888888888888888888888888888888888888888888888888888888888888888
    ifif(CSGO_Jump,GO_J)
    
    GO_J = function()
        repeat
            PressKey("spacebar")
            Sleep(5)
            ReleaseKey("spacebar")
            Sleep(10)
        until not IsMouseButtonPressed(CSGO_Jump)
    end
    --9999999999999999999999999999999999999999999999999999999999999999999999
    ifif(CSOL_KillG_LeftMB,CSOL_K_L)
    
    CSOL_K_L = function()
        repeat
            PressKey("j")
            Sleep(10)
            ReleaseKey("j")
            Sleep(10)
            PressMouseButton(1)
            Sleep(550)
            ReleaseMouseButton(1)
            Sleep(200)
            PressKey("3")
            Sleep(10)
            ReleaseKey("3")
            Sleep(10)
        until not IsMouseButtonPressed(CSOL_KillG_LeftMB)
    end
    --1010101010101010101010101010101010101010101010101010101010101010101010
    ifif(CSOL_KillG_RightMB,CSOL_K_R)
    
    CSOL_K_R = function()
        repeat
            PressKey("f2")
            Sleep(10)
            ReleaseKey("f2")
            Sleep(500)
            PressKey("f2")
            Sleep(50)
            ReleaseKey("f2")
            Sleep(5)
        until not IsMouseButtonPressed(CSOL_KillG_RightMB)
    end
    --1111111111111111111111111111111111111111111111111111111111111111111111
    ifif(CSOL_StarH,CSOL_SH)
    
    CSOL_SH = function()
        PlayMacro("Star_Hammer")
    end
    --1212121212121212121212121212121212121212121212121212121212121212121212
    ifif(CSOL_TigerK,CSOL_TK)
    
    CSOL_TK = function()
        repeat
            PressMouseButton(3)
            Sleep(50)
            ReleaseMouseButton(3)
            Sleep(50)
            PressMouseButton(1)
            Sleep(50)
            ReleaseMouseButton(1)
            Sleep(200)
            PressKey("q")
            Sleep(50)
            ReleaseKey("q")
            Sleep(50)
            PressKey("q")
            Sleep(50)
            ReleaseKey("q")
            Sleep(1100)
        until not IsMouseButtonPressed(CSOL_TigerK)
    end
    --1313131313131313131313131313131313131313131313131313131313131313131313
    ifif(GTA5_Money,GTA5_M)
    
    GTA5_M = function()
        PlayMacro("Left_click_switch")
    end
    --1414141414141414141414141414141414141414141414141414141414141414141414
    ifif(Genshin_F,Genshin_F_Pick_Up)
    
    Genshin_F_Pick_Up = function()
        PlayMacro("F_pick_up")
    end
    --1515151515151515151515151515151515151515151515151515151515151515151515
end
----------------------------------------------------------------------------------------------------------