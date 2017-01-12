-- Lesson 5

-- By: Luke Jeon
-- Created November 2016
-- Created for ICS2O
-- This program displays a button and tells the user when it is selected

-- Local variables
local world1Button
local world2Button
local world3Button

WorldSelectionScene = class()

function WorldSelectionScene:init()
     -- set up display options
    noFill()
    noSmooth()
    noStroke()
    pushStyle() 

    world1Button = Button("Dropbox:Title Large Crate 1", vec2(WIDTH/3, HEIGHT/2))
    world2Button = Button("Dropbox:Title Large Crate 2", vec2(WIDTH/2, HEIGHT/2))
    world3Button = Button("Dropbox:Title Large Crate 3", vec2(WIDTH/1.5, HEIGHT/2))
    
end 

function WorldSelectionScene:touched(touch)
    
    world1Button:touched(touch)
    world2Button:touched(touch)
    world3Button:touched(touch)
    
    if(world1Button.selected == true) then
        Scene.Change("world1")
    end
    if(world2Button.selected == true) then
        Scene.Change("world2")
    end
    if(world3Button.selected == true) then
        Scene.change("world3")
    end

end

function WorldSelectionScene:draw()
    -- Codea does not automatically call this method
    background(88, 113, 48, 255)
     --sprite("Project:Title Large Crate 1")
     --sprite("Project:Title Large Crate 2")
     --sprite("Project:Title Large Crate 3")
    world1Button:draw()
    world2Button:draw()
    world3Button:draw()
    
end