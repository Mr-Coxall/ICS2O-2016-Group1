-- Lesson 5

-- By: Luke Jeon
-- Created November 2016
-- Created for ICS2O
-- This program displays a button and tells the user when it is selected

-- Local variables
local world1level1Button
local world1level2Button
local world1level3Button
local world1level4Button
local world1level5Button

World1Scene = class()

function World1Scene:init()
     -- set up display options
    noFill()
    noSmooth()
    noStroke()
    pushStyle() 
    
    world1level1Button = Button("Dropbox:Program 1", vec2(WIDTH/1, HEIGHT/3))
    world1level2Button = Button("Dropbox:Program 2", vec2(WIDTH/3, HEIGHT/3))
    world1level3Button = Button("Dropbox:Program 3", vec2(WIDTH/3, HEIGHT/3))
    world1level4Button = Button("Project:Program 4", vec2(WIDTH/1, HEIGHT/1))
    world1level5Button = Button("Dropbox:Program 5", vec2(WIDTH/1, HEIGHT/1))
end 

function World1Scene:touched(touch)
    
    world1level1Button:touched(touch)
    world1level2Button:touched(touch)
    world1level3Button:touched(touch)
    world1level4Button:touched(touch)
    world1level5Button:touched(touch)
    
end

function World1Scene:draw()
    -- Codea does not automatically call this method
    
    background(62, 158, 57, 255)
    --sprite("Project:Program 1")
    --sprite("Project:Program 2")
    --sprite("Project:Program 3")
    --sprite("Project:Program 4")
    --sprite("Project:Program 5")
    
    world1level1Button:draw()
    world1level2Button:draw()
    world1level3Button:draw()
    world1level4Button:draw()
    world1level5Button:draw()
    
    
end