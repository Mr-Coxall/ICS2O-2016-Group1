-- ICS2O-2016-Group1
-- GameLogoScene

-- Created by: Mr. Coxall
-- Created on: Nov-2016
-- Created for: ICS2O
-- This is the project for Group #1-2016
-- This is the second scene to show up, the game logo.

GameLogoScene = class()
--sprite("Project:GameBackground")

-- local variables to this scene
local startTime


-- Use this function to perform your initial setup for this scene
function GameLogoScene:init()
    -- set up display options
    noFill()
    noSmooth()
    noStroke()
    pushStyle()  
    
    -- scene setup code here
    startTime = ElapsedTime
    
end

function GameLogoScene:draw()
    -- Codea does not automatically call this method
    
    background(124, 255, 0, 255)
    sprite("Project:GameBackground", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    
    -- Do your drawing here
    if(startTime + 2 < ElapsedTime)then 
       Scene.Change("gameMenu")
    end

end

function GameLogoScene:touched(touch)
    -- Codea does not automatically call this method
    
    -- Do your touch code here
    
end