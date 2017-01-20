--Main Game

-- Created by: Devin Dinh
-- Created on: Nov 2016
-- Created for: ICS2O
-- This is the main game

--Global to the scene Variables
local button0 = 0
local button1 = 1
local button2 = 2
local button3 = 3
local button4 = 4
local button5 = 5
local button6 = 6
local button7 = 7
local button8 = 8
local button9 = 9
--local values = {"1","10","100"}

local home
local hint = false
local worldNumber = 1
local levelNumber = 1
local points = 0
local timer
local randomNumber = math.random(0,9)
--local randomValue = values [math.random(1,#values)]
local randomValue = math.random(1,3)

local hundredsValue = nil
local tensValue = nil
local onesValue = nil

local gameTime
local value100 = 100
local value10 = 10
local value1 = 1
local question = 1

button0Touched = false
button1Touched = false
button2Touched = false
button3Touched = false
button4Touched = false
button5Touched = false
button6Touched = false
button7Touched = false
button8Touched = false
button9Touched = false

local placeValues = {}
local number = {}

World1GameScene = class()

function World1GameScene:init()

    value100 = SpriteObject("Dropbox:Game Area Roof", vec2(WIDTH/4.5, HEIGHT/2.25))
    value10 = SpriteObject("Dropbox:Game Area Roof", vec2(WIDTH/2, HEIGHT/2.25))
    value1 = SpriteObject("Dropbox:Game Area Roof", vec2(WIDTH/1.27, HEIGHT/2.25))

    button0 = SpriteObject("Dropbox:0", vec2(WIDTH/19.25, HEIGHT/14))
    button0.draggable = true

    button1 = SpriteObject("Dropbox:1", vec2(WIDTH/6.65, HEIGHT/14))
    button1.draggable = true

    button2 = SpriteObject("Dropbox:2", vec2(WIDTH/4, HEIGHT/14))
    button2.draggable = true

    button3 = SpriteObject("Dropbox:3", vec2(WIDTH/2.87, HEIGHT/14))
    button3.draggable = true

    button4 = SpriteObject("Dropbox:4", vec2(WIDTH/2.229, HEIGHT/14))
    button4.draggable = true

    button5 = SpriteObject("Dropbox:5", vec2(WIDTH/1.82, HEIGHT/14))
    button5.draggable = true

    button6 = SpriteObject("Dropbox:6", vec2(WIDTH/1.5425, HEIGHT/14))
    button6.draggable = true

    button7 = SpriteObject("Dropbox:7", vec2(WIDTH/1.3387, HEIGHT/14))
    button7.draggable = true

    button8 = SpriteObject("Dropbox:8", vec2(WIDTH/1.182, HEIGHT/14))
    button8.draggable = true

    button9 = SpriteObject("Dropbox:9", vec2(WIDTH/1.057, HEIGHT/14))
    button9.draggable = true

    home = Button("Dropbox:Blue Pause Button", vec2(WIDTH/20.5, HEIGHT/1.07), 1)
    hint = Button("Dropbox:Blue Question Button", vec2(WIDTH/1.0529, HEIGHT/4.7), 1)
    gameTime = ElapsedTime
end

sprite()
function World1GameScene:draw()


    fill(255, 255, 255, 255)
    fontSize(42)
    font("HelveticaNeue-CondensedBlack")

    background(255, 255, 255, 255)
    sprite("Dropbox:Background", WIDTH/2, HEIGHT/2, WIDTH)
    --sprite("Dropbox:Loading Bar", WIDTH/3.99, HEIGHT/14, 525)
    --sprite("Dropbox:Loading Bar", WIDTH/1.337, HEIGHT/14, 525)

    value100:draw()
    value10:draw()
    value1:draw()

    button0:draw()
    button1:draw()
    button2:draw()
    button3:draw()
    button4:draw()
    button5:draw()
    button6:draw()
    button7:draw()
    button8:draw()
    button9:draw()

    home:draw()
    hint:draw()


    sprite("Dropbox:Dialogue Box", WIDTH/1, HEIGHT/1.025, 525)
    text("Points ", WIDTH/5, HEIGHT/1.04)
    --text("Points ", WIDTH/5, HEIGHT/1.04)
    text("Level: "..levelNumber, WIDTH/1.15, HEIGHT/1.04)
    text("World: "..worldNumber, WIDTH/1.14, HEIGHT/1.11)

    fill(54, 42, 233, 255)
    fontSize(42)
    font("HelveticaNeue-CondensedBlack")
    pushStyle()

    ElapsedTime = math.floor(ElapsedTime/1)
    text("Time: "..tostring(ElapsedTime), WIDTH/2, HEIGHT/1.04)

     --  if(hint.selected == true) then
     -- text("Place ".. randomNumber.." in the "..randomValue.." place", WIDTH/1.5, HEIGHT/4.7)


    fill(255, 255, 255, 255)
    fontSize(42)
    font("HelveticaNeue-CondensedBlack")


    text("Place ".. randomNumber.." in the "..randomValue.." place", WIDTH/2, HEIGHT/1.25)

        if (randomValue == 2) then
           randomValue = 10
        end

        if (randomValue == 3) then
            randomValue = 100
        end

        if (hundredsValue ~= nil) then
            if ((hundredsValue == randomNumber) and (randomValue == 100)) then
                text(""..points+100, WIDTH/3.5, HEIGHT/1.04)
                text("Right", WIDTH/2, HEIGHT/4)
            randomNumber = math.random(0,9)
            else
                text("Wrong", WIDTH/2, HEIGHT/4)
            end
        end

        if (tensValue ~= nil) then
            if ((tensValue == randomNumber) and (randomValue == 10))then
                text(""..points+100, WIDTH/3.5, HEIGHT/1.04)
               text("Right", WIDTH/2, HEIGHT/4)
            randomNumber = math.random(0,9)
            else
                text("Wrong", WIDTH/2, HEIGHT/4)
            end
        end


        if (onesValue ~= nil) then
            if ((onesValue == randomNumber) and (randomValue == 1))then
                text(""..points+100, WIDTH/3.5, HEIGHT/1.04)
                text("Right", WIDTH/2, HEIGHT/4)
            randomNumber = math.random(0,9)
            else
                text("wrong", WIDTH/2, HEIGHT/4)
            end
        end
end

function World1GameScene:touched(touch)

    button0:touched(touch)
   if (button0:isTouching(value100) == true) then
        button0.objectCurrentLocation = value100.objectStartLocation
        hundredsValue = 0
    elseif (button0:isTouching(value10) == true) then
        button0.objectCurrentLocation = value10.objectStartLocation
        tensValue = 0
    elseif (button0:isTouching(value1) == true) then
        button0.objectCurrentLocation = value1.objectStartLocation
        onesValue = 0
    end

     button1:touched(touch)
   if (button1:isTouching(value100) == true) then
        button1.objectCurrentLocation = value100.objectStartLocation
        hundredsValue = 1
    elseif (button1:isTouching(value10) == true) then
        button1.objectCurrentLocation = value10.objectStartLocation
        tensValue = 1
    elseif (button1:isTouching(value1) == true) then
        button1.objectCurrentLocation = value1.objectStartLocation
        onesValue = 1
    end

    button2:touched(touch)
    if (button2:isTouching(value100) == true) then
        button2.objectCurrentLocation = value100.objectStartLocation
        hundredsValue = 2
    elseif (button2:isTouching(value10) == true) then
        button2.objectCurrentLocation = value10.objectStartLocation
        tensValue = 2
    elseif (button2:isTouching(value1) == true) then
        button2.objectCurrentLocation = value1.objectStartLocation
        onesValue = 2
    end

    button3:touched(touch)
    if (button3:isTouching(value100) == true) then
        button3.objectCurrentLocation = value100.objectStartLocation
        hundredsValue = 3
    elseif (button3:isTouching(value10) == true) then
        button3.objectCurrentLocation = value10.objectStartLocation
        tensValue = 3
    elseif (button3:isTouching(value1) == true) then
        button3.objectCurrentLocation = value1.objectStartLocation
        onesValue = 3
    end

    button4:touched(touch)
   if (button4:isTouching(value100) == true) then
        button4.objectCurrentLocation = value100.objectStartLocation
        hundredsValue = 4
    elseif (button4:isTouching(value10) == true) then
        button4.objectCurrentLocation = value10.objectStartLocation
        tensValue = 4
    elseif (button4:isTouching(value1) == true) then
        button4.objectCurrentLocation = value1.objectStartLocation
        onesValue = 4
    end

      button5:touched(touch)
   if (button5:isTouching(value100) == true) then
        button5.objectCurrentLocation = value100.objectStartLocation
        hundredsValue = 5
    elseif (button5:isTouching(value10) == true) then
        button5.objectCurrentLocation = value10.objectStartLocation
        tensValue = 5
    elseif (button5:isTouching(value1) == true) then
        button5.objectCurrentLocation = value1.objectStartLocation
        onesValue = 5
     end

      button6:touched(touch)
   if (button6:isTouching(value100) == true) then
        button6.objectCurrentLocation = value100.objectStartLocation
        hundredsValue = 6
    elseif (button6:isTouching(value10) == true) then
        button6.objectCurrentLocation = value10.objectStartLocation
        tensValue = 6
    elseif (button6:isTouching(value1) == true) then
        button6.objectCurrentLocation = value1.objectStartLocation
        onesValue = 6
    end

     button7:touched(touch)
   if (button7:isTouching(value100) == true) then
        button7.objectCurrentLocation = value100.objectStartLocation
        hundredsValue = 7
    elseif (button7:isTouching(value10) == true) then
        button7.objectCurrentLocation = value10.objectStartLocation
        tensValue = 7
    elseif (button7:isTouching(value1) == true) then
        button7.objectCurrentLocation = value1.objectStartLocation
        onesValue = 7
    end

     button8:touched(touch)
   if (button8:isTouching(value100) == true) then
        button8.objectCurrentLocation = value100.objectStartLocation
        hundredsValue = 8
    elseif (button8:isTouching(value10) == true) then
        button8.objectCurrentLocation = value10.objectStartLocation
        tensValue = 8
    elseif (button8:isTouching(value1) == true) then
        button8.objectCurrentLocation = value1.objectStartLocation
        onesValue = 8
    end

      button9:touched(touch)
   if (button9:isTouching(value100) == true) then
        button9.objectCurrentLocation = value100.objectStartLocation
        hundredsValue = 9
    elseif (button9:isTouching(value10) == true) then
        button9.objectCurrentLocation = value10.objectStartLocation
        tensValue = 9
    elseif (button9:isTouching(value1) == true) then
        button9.objectCurrentLocation = value1.objectStartLocation
        onesValue = 9
    end

    home:touched(touch)
    hint:touched(touch)

    if(home.selected == true) then
        Scene.Change("homeScene")
    end
end
