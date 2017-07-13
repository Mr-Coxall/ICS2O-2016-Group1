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
local home
local hint = false
local world1 = 1
local levelNumber = 1
local randomNumber = nil
local randomValue = nil
local userSelectedNumber = nil
local userSelectedValue = nil

local hundredsValue = nil
local tensValue = nil
local onesValue = nil
local gameTime = 0
local value100 = 100
local value10 = 10
local value1 = 1
local question = 1
candy = 0
--points = 0

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

local pauseTimer = nil
local justMadeChoice = false

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
    
    --sprite("Dropbox:Blue Back Circle Button")
    home = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/20.5, HEIGHT/1.07), 1)
    hint = Button("Dropbox:Blue Question Button", vec2(WIDTH/1.0529, HEIGHT/4.7), 1)
    
    randomNumber = math.random(0,9)
    randomValue = math.random(1,3)
    
    if (randomValue == 2) then
        randomValue = 10
    end
     
    if (randomValue == 3) then
        randomValue = 100
    end
    
    pauseTimer = nil
    justMadeChoice = false
    gameTime = 31

end

function World1GameScene:draw()

    
    fill(255, 255, 255, 255)
    fontSize(42)
    font("HelveticaNeue-CondensedBlack") 
    
    background(255, 255, 255, 255)
    sprite("Dropbox:Background", WIDTH/2, HEIGHT/2, WIDTH)
    
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
    --hint:draw()
  
    
    sprite("Dropbox:Dialogue Box", WIDTH/1, HEIGHT/0.955, 525)
    text("Points: "..points, WIDTH/5, HEIGHT/1.04)
    --text("Level: "..levelNumber, WIDTH/1.15, HEIGHT/1.04)
    text("World: 1", WIDTH/1.14, HEIGHT/1.04)
    
     if(hint.selected == true) then
        text("Drag and Drop!", WIDTH/2, HEIGHT/3)
    end
    
    fill(54, 42, 233, 255)
    fontSize(42)
    font("HelveticaNeue-CondensedBlack") 
    pushStyle()
    
    gameTime = gameTime-DeltaTime
    --if (gameTime < 60) then
       text("Time: "..tostring(math.floor(gameTime/1)), WIDTH/2, HEIGHT/1.04)
       fill(255, 255, 255, 255)
       fontSize(42)
       font("HelveticaNeue-CondensedBlack")
       text("Place ".. randomNumber.." in the "..randomValue.." place", WIDTH/2, HEIGHT/1.25)
    popStyle()
    --end
        
      --[[
        if (hundredsValue ~= nil) then
            if ((hundredsValue == randomNumber) and (randomValue == 100)) then
                points=points+100
                randomNumber = math.random(0,9)   
                randomValue = math.random(1,3)    
                hundredsValue=nil     
            else
            end
        end
    
        if (tensValue ~= nil) then
            if ((tensValue == randomNumber) and (randomValue == 10)) then
                points=points+100
                randomNumber = math.random(0,9)    
                randomValue = math.random(1,3)
                tensValue=nil
            else
            end
        end
    
    
        if (onesValue ~= nil) then
            if ((onesValue == randomNumber) and (randomValue == 1))then
                points=points+100
                randomNumber = math.random(0,9)
                randomValue = math.random(1,3)
                onesValue=nil
            else
            end
        end  --]] 
        if(gameTime < 0) then
            --gameTime = 0
            candy = points/25
            Scene.Change("wrongAnswerScene1") 
            
        end
    
    choiceMadeWorld1GameScene()
end

function World1GameScene:touched(touch)
    
    button0:touched(touch)
   if (button0:isTouching(value100) == true) then
        button0.objectCurrentLocation = value100.objectStartLocation
        hundredsValue = 0
        userSelectedNumber = 0
        userSelectedValue = 100
        choiceMadeWorld1GameScene(true)
    elseif (button0:isTouching(value10) == true) then
        button0.objectCurrentLocation = value10.objectStartLocation
        tensValue = 0
        userSelectedNumber = 0
        userSelectedValue = 10
        choiceMadeWorld1GameScene(true)
    elseif (button0:isTouching(value1) == true) then
        button0.objectCurrentLocation = value1.objectStartLocation    
        onesValue = 0
        userSelectedNumber = 0
        userSelectedValue = 1
        choiceMadeWorld1GameScene(true)
    end
    
     button1:touched(touch)
   if (button1:isTouching(value100) == true) then
        button1.objectCurrentLocation = value100.objectStartLocation
        hundredsValue = 1
        userSelectedNumber = 1
        userSelectedValue = 100
        choiceMadeWorld1GameScene(true)
    elseif (button1:isTouching(value10) == true) then
        button1.objectCurrentLocation = value10.objectStartLocation
        tensValue = 1
        userSelectedNumber = 1
        userSelectedValue = 10
        choiceMadeWorld1GameScene(true)
    elseif (button1:isTouching(value1) == true) then
        button1.objectCurrentLocation = value1.objectStartLocation    
        onesValue = 1
        userSelectedNumber = 1
        userSelectedValue = 1
        choiceMadeWorld1GameScene(true)
    end
    
    button2:touched(touch)
    if (button2:isTouching(value100) == true) then
        button2.objectCurrentLocation = value100.objectStartLocation
        hundredsValue = 2
        userSelectedNumber = 2
        userSelectedValue = 100
        choiceMadeWorld1GameScene(true)
    elseif (button2:isTouching(value10) == true) then
        button2.objectCurrentLocation = value10.objectStartLocation
        tensValue = 2
        userSelectedNumber = 2
        userSelectedValue = 10
        choiceMadeWorld1GameScene(true)
    elseif (button2:isTouching(value1) == true) then
        button2.objectCurrentLocation = value1.objectStartLocation 
        onesValue = 2
        userSelectedNumber = 2
        userSelectedValue = 1
        choiceMadeWorld1GameScene(true)
    end
    
    button3:touched(touch)
    if (button3:isTouching(value100) == true) then
        button3.objectCurrentLocation = value100.objectStartLocation
        hundredsValue = 3
        userSelectedNumber = 3
        userSelectedValue = 100
        choiceMadeWorld1GameScene(true)
    elseif (button3:isTouching(value10) == true) then
        button3.objectCurrentLocation = value10.objectStartLocation
        tensValue = 3
        userSelectedNumber = 3
        userSelectedValue = 10
        choiceMadeWorld1GameScene(true)
    elseif (button3:isTouching(value1) == true) then
        button3.objectCurrentLocation = value1.objectStartLocation
        onesValue = 3
        userSelectedNumber = 3
        userSelectedValue = 1
        choiceMadeWorld1GameScene(true)
    end
    
    button4:touched(touch)
   if (button4:isTouching(value100) == true) then
        button4.objectCurrentLocation =  value100.objectStartLocation
        hundredsValue = 4
        userSelectedNumber = 4
        userSelectedValue = 100
        choiceMadeWorld1GameScene(true)
    elseif (button4:isTouching(value10) == true) then
        button4.objectCurrentLocation = value10.objectStartLocation
        tensValue = 4
        userSelectedNumber = 4
        userSelectedValue = 10
        choiceMadeWorld1GameScene(true)
    elseif (button4:isTouching(value1) == true) then
        button4.objectCurrentLocation = value1.objectStartLocation 
        onesValue = 4
        userSelectedNumber = 4
        userSelectedValue = 1
        choiceMadeWorld1GameScene(true)
    end
    
      button5:touched(touch)
   if (button5:isTouching(value100) == true) then
        button5.objectCurrentLocation = value100.objectStartLocation
        hundredsValue = 5
        userSelectedNumber = 5
        userSelectedValue = 100
        choiceMadeWorld1GameScene(true)
    elseif (button5:isTouching(value10) == true) then
        button5.objectCurrentLocation = value10.objectStartLocation
        tensValue = 5
        userSelectedNumber = 5
        userSelectedValue = 10
        choiceMadeWorld1GameScene(true)
    elseif (button5:isTouching(value1) == true) then
        button5.objectCurrentLocation = value1.objectStartLocation 
        onesValue = 5
        userSelectedNumber = 5
        userSelectedValue = 1
        choiceMadeWorld1GameScene(true)
     end

      button6:touched(touch)
   if (button6:isTouching(value100) == true) then
        button6.objectCurrentLocation = value100.objectStartLocation
        hundredsValue = 6
        userSelectedNumber = 6
        userSelectedValue = 100
        choiceMadeWorld1GameScene(true)
    elseif (button6:isTouching(value10) == true) then
        button6.objectCurrentLocation = value10.objectStartLocation
        tensValue = 6
        userSelectedNumber = 6
        userSelectedValue = 10
        choiceMadeWorld1GameScene(true)
    elseif (button6:isTouching(value1) == true) then
        button6.objectCurrentLocation = value1.objectStartLocation 
        onesValue = 6
        userSelectedNumber = 6
        userSelectedValue = 1
        choiceMadeWorld1GameScene(true)
    end
    
     button7:touched(touch)
   if (button7:isTouching(value100) == true) then
        button7.objectCurrentLocation = value100.objectStartLocation
        hundredsValue = 7
        userSelectedNumber = 7
        userSelectedValue = 100
        choiceMadeWorld1GameScene(true)
    elseif (button7:isTouching(value10) == true) then
        button7.objectCurrentLocation = value10.objectStartLocation
        tensValue = 7
        userSelectedNumber = 7
        userSelectedValue = 10
        choiceMadeWorld1GameScene(true)
    elseif (button7:isTouching(value1) == true) then
        button7.objectCurrentLocation = value1.objectStartLocation    
        onesValue = 7
        userSelectedNumber = 7
        userSelectedValue = 1
        choiceMadeWorld1GameScene(true)
    end
    
     button8:touched(touch)
   if (button8:isTouching(value100) == true) then
        button8.objectCurrentLocation = value100.objectStartLocation
        hundredsValue = 8
        userSelectedNumber = 8
        userSelectedValue = 100
        choiceMadeWorld1GameScene(true)
    elseif (button8:isTouching(value10) == true) then
        button8.objectCurrentLocation = value10.objectStartLocation
        tensValue = 8
        userSelectedNumber = 8
        userSelectedValue = 10
        choiceMadeWorld1GameScene(true)
    elseif (button8:isTouching(value1) == true) then
        button8.objectCurrentLocation = value1.objectStartLocation 
        onesValue = 8
        userSelectedNumber = 8
        userSelectedValue = 1
        choiceMadeWorld1GameScene(true)
    end
    
      button9:touched(touch)
   if (button9:isTouching(value100) == true) then
        button9.objectCurrentLocation = value100.objectStartLocation
        hundredsValue = 9
        userSelectedNumber = 9
        userSelectedValue = 100
        choiceMadeWorld1GameScene(true)
    elseif (button9:isTouching(value10) == true) then
        button9.objectCurrentLocation = value10.objectStartLocation
        tensValue = 9
        userSelectedNumber = 9
        userSelectedValue = 10
        choiceMadeWorld1GameScene(true)
    elseif (button9:isTouching(value1) == true) then
        button9.objectCurrentLocation = value1.objectStartLocation 
        onesValue = 9
        userSelectedNumber = 9
        userSelectedValue = 1
        choiceMadeWorld1GameScene(true)
    end
    
    home:touched(touch)  
    --hint:touched(touch)

    if(home.selected == true) then
        gameTime = 0
        --points = 0
        Scene.Change("world1")
    end
end

function choiceMadeWorld1GameScene(hasAChoiceBeenMade)
    -- once digit dropped, tell them how they did
    -- but we want a 1 second delay
    --print("here")
    if (hasAChoiceBeenMade == true) then
        justMadeChoice = true
        pauseTimer = gameTime
        --print(userSelectedValue)
        --print(randomValue)
    end
    
    if (justMadeChoice == true) then
        --print(pauseTimer)
        --print(gameTime)
        if (pauseTimer > gameTime + 0.75) then 
            if (userSelectedNumber == randomNumber and userSelectedValue == randomValue) then
                justMadeChoice = nil
                points = points + 10
                Scene.Change("gameScoreScene1")
            else
                Scene.Change("wrongAnswerScene1")
            end
        end
    end
      
end
