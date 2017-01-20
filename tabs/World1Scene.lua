-- Lesson 5

-- By: Luke Jeon
-- Created November 2016
-- Created for ICS2O
-- This program displays a button and tells the user when it is selected

-- Local variables
local arrowButton
local backButton
local level1Button
local level2Button
local level3Button
local level4Button
local level5Button

World1Scene = class()

function World1Scene:init()
     -- set up display options
    noFill()
    noSmooth()
    noStroke()
    pushStyle() 
    
    arrowButton = Button("Dropbox:Claw Right", vec2(WIDTH/1.05, HEIGHT/2))
    backButton = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/12.5, HEIGHT/1.1))
    level1Button = Button("Dropbox:1", vec2(WIDTH/4.97, HEIGHT/2))
    level2Button = Button("Dropbox:2", vec2(WIDTH/2.78, HEIGHT/2))
    level3Button = Button("Dropbox:3", vec2(WIDTH/1.93, HEIGHT/2))
    level4Button = Button("Dropbox:4", vec2(WIDTH/1.48, HEIGHT/2))
    level5Button = Button("Dropbox:5", vec2(WIDTH/1.20, HEIGHT/2))
end

function World1Scene:touched(touch)
    
    arrowButton:touched(touch)
    backButton:touched(touch)
    level1Button:touched(touch)
    level2Button:touched(touch)
    level3Button:touched(touch)
    level4Button:touched(touch)
    level5Button:touched(touch)
    
    if(arrowButton.selected == true) then
        Scene.Change("world2")
         end
    if(backButton.selected == true) then
        Scene.Change("worldSelection")
        end
    if(level1Button.selected == true) then
        Scene.Change("world1GameScene")
        end
    if(level2Button.selected == true) then
        Scene.Change("world1GameScene")
    end
    if(level3Button.selected == true) then
        Scene.Change("world1GameScene")
    end
    if(level4Button.selected == true) then
        Scene.Change("world1GameScene")
    end
    if(level5Button.selected == true) then
        Scene.Change("world1GameScene")
    end
    
end

function World1Scene:draw()
    -- Codea does not automatically call this method
    
    sprite("Dropbox:Background Fade", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    --sprite("Project:Program 1")
    --sprite("Project:Program 2")
    --sprite("Project:Program 3")
    --sprite("Project:Program 4")
    --sprite("Project:Program 5")
    
    arrowButton:draw()
    backButton:draw()
    level1Button:draw()
    level2Button:draw()
    level3Button:draw()
    level4Button:draw()
    level5Button:draw()
    
    fill(218, 65, 65, 255)
    fontSize(55)
    font("AmericanTypewriter")
    text("World 1", WIDTH/2, HEIGHT/1.1)

end