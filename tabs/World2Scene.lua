-- Lesson 5

-- By: Luke Jeon
-- Created November 2016
-- Created for ICS2O
-- This program displays a button and tells the user when it is selected

-- Local variables
local level1Button
local level2Button
local level3Button
local level4Button
local level5Button
local rightArrowButton
local leftArrowButton
local backButton

World2Scene = class()

function World2Scene:init()
     -- set up display options
    noFill()
    noSmooth()
    noStroke()
    pushStyle() 
    
    backButton = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/12.5, HEIGHT/1.1))
    rightArrowButton = Button("Dropbox:Claw Right", vec2(WIDTH/1.05, HEIGHT/2))
    leftArrowButton = Button("Dropbox:Claw Left", vec2(WIDTH/12.5, HEIGHT/2))
    level1Button = Button("Dropbox:1", vec2(WIDTH/4.97, HEIGHT/2))
    level2Button = Button("Dropbox:2", vec2(WIDTH/2.78, HEIGHT/2))
    level3Button = Button("Dropbox:3", vec2(WIDTH/1.93, HEIGHT/2))
    level4Button = Button("Dropbox:4", vec2(WIDTH/1.48, HEIGHT/2))
    level5Button = Button("Dropbox:5", vec2(WIDTH/1.20, HEIGHT/2))

end

function World2Scene:touched(touch)
    
    backButton:touched(touch)
    rightArrowButton:touched(touch)
    leftArrowButton:touched(touch)
    level1Button:touched(touch)
    level2Button:touched(touch)
    level3Button:touched(touch)
    level4Button:touched(touch)
    level5Button:touched(touch)
    
    if(rightArrowButton.selected == true) then
        Scene.Change("world3")
    end
    if(leftArrowButton.selected == true) then
        Scene.Change("world1")
    end
    if(level1Button.selected == true) then
        Scene.Change("world2GameScene")
        end
    if(level2Button.selected == true) then
        Scene.Change("world2GameScene")
    end
    if(level3Button.selected == true) then
        Scene.Change("world2GameScene")
    end
    if(level4Button.selected == true) then
        Scene.Change("world2GameScene")
    end
    if(level5Button.selected == true) then
        Scene.Change("world2GameScene")
    end
    if(backButton.selected == true) then
        Scene.Change("worldSelection")
        end
    
end

function World2Scene:draw()
    -- Codea does not automatically call this method
    
    background(223, 31, 31, 255)
    --sprite("Project:Program 1")
    --sprite("Project:Program 2")
    --sprite("Project:Program 3")
    --sprite("Project:Program 4")
    --sprite("Project:Program 5")
    
    backButton:draw()
    rightArrowButton:draw()
    leftArrowButton:draw()
    level1Button:draw()
    level2Button:draw()
    level3Button:draw()
    level4Button:draw()
    level5Button:draw()
    
    fill(10, 10, 10, 255)
    fontSize(55)
    font("AmericanTypewriter")
    text("World 2", WIDTH/2, HEIGHT/1.1)

end