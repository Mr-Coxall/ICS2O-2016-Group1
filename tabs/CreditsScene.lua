CreditsScene = class()

local backButton
local yPosition = HEIGHT/9.1 - 100

function CreditsScene:init()
    -- you can accept and set parameters here
    backButton = Button("Dropbox:Blue Move Scene Back Button", vec2(WIDTH/20, HEIGHT/1.07))
end

function CreditsScene:draw()
    background(255, 255, 255, 255)
    backButton:draw()
    fill(0, 0, 0, 255)
    fontSize(50)
    font("Zapfino")
    text("Main game:Devin", WIDTH/2, yPosition)
    text("Game menu:Luke", WIDTH/2, yPosition-100)
    text("Setting:Peter", WIDTH/2, yPosition-200)
    text("Thanks For Playing!!!", WIDTH/2, yPosition-300)
    yPosition = yPosition + 2
end

function CreditsScene:touched(touch)

         backButton:touched(touch)

         if(backButton.selected == true) then
            Scene.Change("setting")
            yPosition = HEIGHT/9.1 - 100

         end
end
