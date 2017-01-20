-- Lesson 5

-- By: Luke Jeon
-- Created November 2016
-- Created for ICS2O
-- This program displays a button and tells the user when it is selected

-- Local variables
local backButton

CharacterShopScene = class()

function CharacterShopScene:init()
     -- set up display options
    noFill()
    noSmooth()
    noStroke()
    pushStyle() 
    
    backButton = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/15.5, HEIGHT/10))
    
end

function CharacterShopScene:touched(touch)

    backButton:touched(touch)
    
    if(backButton.selected == true) then
        Scene.Change("gameMenu")
    end
end

function CharacterShopScene:draw()
    -- Codea does not automatically call this method
    
    sprite("Dropbox:Opening Background", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    --sprite("Project:Blue Move Scene Forward Button", WIDTH/18.9, HEIGHT/10, 100)
    --sprite("Project:Blue Settings Button", WIDTH/18.9, HEIGHT/10, 100)
    --sprite("Project:shopImage", WIDTH/18.9/ HEIGHT/10, 100)
    --sprite("Project:Star Filled", WIDTH/9.4 HEIGHT/9, 100) 
    backButton:draw()
    fill(0, 0, 0, 255)
    fontSize(60)
    font("AmericanTypewriter")
    text("Shop", WIDTH/2, HEIGHT/1.1)
    
end