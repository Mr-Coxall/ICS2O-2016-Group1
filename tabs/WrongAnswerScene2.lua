-- WrongAnswerScene2

-- Created by: Mr. Coxall
-- Created on: Nov 2016
-- Created for: ICS2O
-- This is the scene that pops up if level is wrong

local home
local redoButton 
local nextLevelButton
candy = 0
--points = 0

WrongAnswerScene2 = class()

function WrongAnswerScene2:init()
    
   --home = Button("Dropbox:Blue Pause Button", vec2(WIDTH/10, HEIGHT/6), 1)
   --redoButton = Button("Dropbox:Blue Level Menu Button", vec2(WIDTH/2, HEIGHT/6), 1)
   nextLevelButton = Button("Dropbox:Blue Forward Circle Button", vec2(WIDTH/1.15, HEIGHT/6), 1)
end

function WrongAnswerScene2:draw()
    
    background(255, 0, 5, 255)
    --sprite("Planet Cute:Wood Block", WIDTH/2, HEIGHT/1.7, WIDTH)
    
    fill(50, 0, 255, 255)
    fontSize(80)
    font("Verdana-Bold") 
    pushStyle()
    
    text("Answer incorrect", WIDTH/2, HEIGHT/1.12)
    popStyle()
    
    fill(0, 0, 0, 255)
    fontSize(80)
    font("Verdana-Bold") 
    pushStyle()
    
    text("Score: "..points , WIDTH/2, HEIGHT/1.45)
    --text("Candy: ".."+"..math.floor (candy) , WIDTH/2, HEIGHT /2)
    
    --home:draw()
    --redoButton:draw()
    nextLevelButton:draw()
    
end

function WrongAnswerScene2:touched(touch)
    
    --home:touched(touch)
    --redoButton:touched(touch)
    nextLevelButton:touched(touch)
        
    if(nextLevelButton.selected == true) then
        --points = 0
        Scene.Change("world2GameScene")
    end
end