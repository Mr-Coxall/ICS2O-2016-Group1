-- ICS2O-2016-Group1
-- GameMenuScene

-- Created by: Luke Jeon
-- Created on: Nov-2016
-- Created for: ICS2O
-- This is the project for Group #1-2016
-- This is the third scene to show up, the game menu.

GameMenuScene = class()

-- local variables to this scene



-- Use this function to perform your initial setup for this scene
function GameMenuScene:init()
    -- set up display options
    noFill()
    noSmooth()
    noStroke()
    pushStyle()  
    
    -- scene setup code here
    
end

function GameMenuScene:draw()
    -- Codea does not automatically call this method
    
    background(0, 0, 0, 255)
    sprite("Dropbox:Blue Settings Button", vec2(WIDTH/9, HEIGHT/9))
    
    -- Do your drawing here

end

function GameMenuScene:touched(touch)
    -- Codea does not automatically call this method
    
    -- Do your touch code here

    
end