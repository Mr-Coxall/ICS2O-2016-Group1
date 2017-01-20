HelpScene2 = class()
local backButton
local moveBackButton

function HelpScene2:init()
    -- you can accept and set parameters here
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
     -- sprite("Dropbox:Blue Move Scene Back Button")
    backButton = Button("Dropbox:Blue Move Scene Back Button", vec2(WIDTH/20, HEIGHT/1.07))
    moveBackButton = Button("Dropbox:Blue Backward Button", vec2(WIDTH/5.8, HEIGHT/2))
end

function HelpScene2:draw()
    background(255, 255, 255, 255)
    sprite("Project:help2",WIDTH/2, HEIGHT/2, WIDTH/2, HEIGHT/2)
    backButton:draw()
    moveBackButton:draw()
    -- Codea does not automatically call this method
end

function HelpScene2:touched(touch)
    backButton:touched(touch)
    moveBackButton:touched(touch)

    -- Codea does not automatically call this method
    if(backButton.selected == true) then
        Scene.Change("setting")
    elseif(moveBackButton.selected == true) then
        Scene.Change("help1")
    end
end
