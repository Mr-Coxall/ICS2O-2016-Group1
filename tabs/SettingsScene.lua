-- Lesson 5

-- By: Luke Jeon
-- Created November 2016
-- Created for ICS2O
-- This program displays a button and tells the user when it is selected

-- Local variables
local backButton

SettingsScene = class()

function SettingsScene:init()
     -- set up display options
    noFill()
    noSmooth()
    noStroke()
    pushStyle() 
    
    backButton = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/20.4, HEIGHT/15))
end 

function SettingsScene:touched(touch)
    backButton:touched(touch)
    if(backButton.selected == true) then
        Scene.Change("gameMenu")
        end
end

function SettingsScene:draw()
    -- Codea does not automatically call this method
    background(48, 251, 1, 255)
    --sprite("Project:Blue Back Circle Button")
    backButton:draw()
    
end