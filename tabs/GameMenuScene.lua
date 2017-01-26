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
local yPosition = HEIGHT/1.1

GameMenuScene = class()

function GameMenuScene:init()
     -- set up display options
    noFill()
    noSmooth()
    noStroke()
    pushStyle() 
    
    settingsButton = Button("Dropbox:Yellow Settings Button", vec2(WIDTH/15, HEIGHT/8.6))
    playButton = Button("Dropbox:Yellow Move Scene Forward Button", vec2(WIDTH/2, HEIGHT/2))
    shopButton = Button("Dropbox:Dialogue Button", vec2(WIDTH/2, HEIGHT/10))
    achievmentButton = Button("Dropbox:Yellow Cancel Button", vec2(WIDTH/1.07, HEIGHT/8.6))

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
    
    background(255, 255, 255, 255)
    --sprite("Project:Blue Move Scene Forward Button", WIDTH/18.9, HEIGHT/10, 100)
    --sprite("Project:Blue Settings Button", WIDTH/18.9, HEIGHT/10, 100)
    --sprite("Project:shopImage", WIDTH/18.9/ HEIGHT/10, 100)
    --sprite("Project:Star Filled", WIDTH/9.4 HEIGHT/9, 100) 
    
    settingsButton:draw()
    playButton:draw()
    shopButton:draw()
    achievmentButton:draw()
    
    sprite("Dropbox:starImage1", WIDTH/3, yPosition)
    sprite("Dropbox:starImage1", WIDTH/1.6, yPosition + 100)
    sprite("Dropbox:starImage1", WIDTH/5, yPosition + 200)
    sprite("Dropbox:starImage1", WIDTH/1.21, yPosition + 300)
    
    yPosition = yPosition - 9
    
    if (yPosition < HEIGHT/10 - 1000) then
        yPosition = HEIGHT/1.1 + 200
    end
    
    fill(9, 9, 9, 255)
    fontSize(80)
    font("AmericanTypewriter")
    text("Math Lands", WIDTH/2, HEIGHT/1.2)
    fontSize(40)
    text("Shop", WIDTH/2, HEIGHT/10)
    
    
    
end
