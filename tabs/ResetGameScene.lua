ResetGameScene = class()

-- variables local to entire file
local noButton
local yesButton
local backButton

function ResetGameScene:init()
sprite("Cargo Bot:Condition Red")
noButton = Button("Cargo Bot:Condition Red", vec2(WIDTH/1.2, HEIGHT/2))   
yesButton = Button("Cargo Bot:Condition Green", vec2(WIDTH/5.8, HEIGHT/2))   
backButton = Button("Dropbox:Blue Move Scene Back Button", vec2(WIDTH/20, HEIGHT/1.07))  
end

function ResetGameScene:draw()
   -- Codea does not automatically call this method
   background(255, 255, 255, 255)
    yesButton:draw()
    noButton:draw()
    backButton:draw()

   fill(0, 0, 0, 255)
   fontSize(30)
   font("AmericanTypewriter")
   text("Are you sure you want to reset the game?", WIDTH/2, HEIGHT/1.5)
   text("yes", WIDTH/5.8, HEIGHT/2)
   text("No", WIDTH/1.2, HEIGHT/2)
end

function ResetGameScene:touched(touch)
   -- Codea does not automatically call this method
   yesButton:touched(touch) 
   noButton:touched(touch)  
   backButton:touched(touch)

       if(backButton.selected == true) then
   Scene.Change("setting")

       elseif(noButton.selected == true) then
   Scene.Change("setting")

        end
end