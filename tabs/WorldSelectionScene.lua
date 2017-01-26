-- Lesson 5

-- By: Luke Jeon
-- Created November 2016
-- Created for ICS2O
-- This program displays a button and tells the user when it is selected

-- Local variables
local world1Button
local world2Button
local world3Button
local homeButton


WorldSelectionScene = class()

function WorldSelectionScene:init()
     -- set up display options
    noFill()
    noSmooth()
    noStroke()
    pushStyle() 
    
    world1Button = Button("Dropbox:world1", vec2(WIDTH/5, HEIGHT/2))
    world2Button = Button("Dropbox:world2", vec2(WIDTH/2, HEIGHT/2))
    world3Button = Button("Dropbox:world3", vec2(WIDTH/1.25, HEIGHT/2))
    homeButton = Button("Dropbox:Blue Level Menu Button", vec2(WIDTH/12.5, HEIGHT/1.1))
end 

function WorldSelectionScene:touched(touch)
    world1Button:touched(touch)
    world2Button:touched(touch)
    world3Button:touched(touch)
    homeButton:touched(touch)
    
    if(world1Button.selected == true) then
        Scene.Change("world1")
    end
    if(world2Button.selected == true) then
        Scene.Change("world2")
    end
    if(world3Button.selected == true) then
        Scene.Change("world3")
    end
    if(homeButton.selected == true) then
        Scene.Change("gameMenu")
    end

end

function WorldSelectionScene:draw()
    -- Codea does not automatically call this method
    background(30, 179, 46, 255)
     --sprite("Project:Title Large Crate 1")
     --sprite("Project:Title Large Crate 2")
     --sprite("Project:Title Large Crate 3")
    world1Button:draw()
    world2Button:draw()
    world3Button:draw()
    homeButton:draw()
    
    fill(0, 0, 0, 255)
    fontSize(50)
    font("AmericanTypewriter")
    
    text("World 1", WIDTH/5, HEIGHT/4)
    text("World 2", WIDTH/2, HEIGHT/4)
    text("World 3", WIDTH/1.25, HEIGHT/4)
    text("World Select", WIDTH/2, HEIGHT/1.2)
end
