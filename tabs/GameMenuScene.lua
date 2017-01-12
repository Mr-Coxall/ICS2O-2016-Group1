-- Lesson 5

-- By: Luke Jeon
-- Created November 2016
-- Created for ICS2O
-- This program displays a button and tells the user when it is selected

-- Local variables
local settingsButton
local playButton
local shopButton
local achievmentButton

GameMenuScene = class()

function GameMenuScene:init()
     -- set up display options
    noFill()
    noSmooth()
    noStroke()
    pushStyle() 
    
    settingsButton = Button("Dropbox:Blue Settings Button", vec2(WIDTH/21, HEIGHT/15))
    playButton = Button("Dropbox:Blue Move Scene Forward Button", vec2(WIDTH/2, HEIGHT/2))
    shopButton = Button("Dropbox:shopImage", vec2(WIDTH/2, HEIGHT/15))
    achievmentButton = Button("Dropbox:Star Filled", vec2(WIDTH/1.0426, HEIGHT/20))
    
end 

function GameMenuScene:touched(touch)

    settingsButton:touched(touch)
    playButton:touched(touch)
    shopButton:touched(touch)
    achievmentButton:touched(touch)
    
    if(playButton.selected == true) then
        Scene.Change("worldSelection")
    end
    if(achievmentButton.selected == true) then
        Scene.Change("achievments")
    end
    if(settingsButton.selected == true) then
        Scene.Change("settings")
    end
    if(shopButton.selected == true) then
        Scene.Change("characterShop")
    end
end

function GameMenuScene:draw()
    -- Codea does not automatically call this method
    
    background(62, 158, 57, 255)
    --sprite("Project:Blue Move Scene Forward Button", WIDTH/18.9, HEIGHT/10, 100)
    --sprite("Project:Blue Settings Button", WIDTH/18.9, HEIGHT/10, 100)
    --sprite("Project:shopImage", WIDTH/18.9/ HEIGHT/10, 100)
    --sprite("Project:Star Filled", WIDTH/9.4 HEIGHT/9, 100) 
    settingsButton:draw()
    playButton:draw()
    shopButton:draw()
    achievmentButton:draw()
    
    
end