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
    sprite("Dropbox:Opening Background", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    --sprite("Project:Blue Back Circle Button")
    
    backButton:draw()
    fill(31, 27, 27, 255)
    fontSize(60)
    font("AmericanTypewriter")
    text("Settings", WIDTH/2, HEIGHT/1.1)
    
end