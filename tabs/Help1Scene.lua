HelpScene1 = class()
-- variables local to entire file
local moveBackButton
local moveForwardButton
local backButton

function HelpScene1:init()

--sprite("Dropbox:Blue Backward Button")

   moveBackButton = Button("Dropbox:Blue Backward Button", vec2(WIDTH/5.8, HEIGHT/2))
   moveForwardButton = Button("Dropbox:Blue Forward Button", vec2(WIDTH/1.2, HEIGHT/2))
   backButton = Button("Dropbox:Blue Move Scene Back Button", vec2(WIDTH/20, HEIGHT/1.07))
end

function HelpScene1:draw()
    -- Codea does not automatically call this method
    background(255, 255, 255, 255)
    sprite("Project:help", WIDTH/2, HEIGHT/2, WIDTH/2, HEIGHT/2)
     moveBackButton:draw()
     moveForwardButton:draw()
     backButton:draw()
end

function HelpScene1:touched(touch)

    moveBackButton:touched(touch)
    moveForwardButton:touched(touch)
    backButton:touched(touch)

    if(backButton.selected == true) then
        Scene.Change("setting")
    elseif(moveForwardButton.selected == true) then
        Scene.Change("help2")
    end
end
