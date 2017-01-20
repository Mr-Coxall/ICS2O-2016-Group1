-- ICS2O-2016-Group1
-- settingsScene

-- Created by: peter zhu
-- Created on: Nov-2016
-- Created for: ICS2O
-- This is the project for Group #1-2016
-- This is the third scene to show up, the game menu.

SettingsScene = class()

-- local variables to this scene
--local gameCenterButton
local gameCenterButton
local helpButton
local aboutUsButton
local resetButton
--local homeButton
-- Use this function to perform your initial setup for this scene
function SettingsScene:init()
    -- set up display options
    noFill()
    noSmooth()
    noStroke()
    pushStyle()

   -- scene setup code here
   -- sprite("Dropbox:Blue Back Rectangle Button")
   -- gameCenterButton = Button("", vec2(WIDTH/2, HEIGHT/2))
    --sprite("Documents:Gold")
    gameCenterButton =  Button("Dropbox:Gold", vec2(WIDTH/2, HEIGHT/1.5))
    helpButton = Button("Dropbox:Gold", vec2(WIDTH/2, HEIGHT/2))
    aboutUsButton = Button("Dropbox:Gold", vec2(WIDTH/2, HEIGHT/3))
    resetButton = Button("Dropbox:Gold", vec2(WIDTH/2, HEIGHT/6))
   -- homeButton = Button("Dropbox:Blue Back Rectangle Button",vec2(WIDTH/10, HEIGHT/1.21))
end

function SettingsScene:draw()
    -- Codea does not automatically call this method

    background(255, 255, 255, 255)
    sprite("Dropbox:Game Lower BG",WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
   -- gameCenterButton:draw()
    gameCenterButton:draw()
    helpButton:draw()
    aboutUsButton:draw()
    resetButton:draw()
  --  homeButton:draw()
    fill(0, 0, 0, 255)
    fontSize(30)
    font("AmericanTypewriter")
    text("Game Center", WIDTH/2, HEIGHT/1.5)
    text("Help", WIDTH/2, HEIGHT/2)
    text("About us",WIDTH/2, HEIGHT/3)
    text("Reset", WIDTH/2, HEIGHT/6)
    -- Do your drawing here


end

function SettingsScene:touched(touch)

        gameCenterButton:touched(touch)
        helpButton:touched(touch)
        aboutUsButton:touched(touch)
        resetButton:touched(touch)
     --homeButton:touched(touch)

        if(resetButton.selected == true) then
        Scene.Change("reset")

           elseif (helpButton.selected == true) then
          Scene.Change("help1")

                 elseif(aboutUsButton.selected == true) then
                       Scene.Change("credits")
        end

                    if (gameCenterButton.selected == true) then
                       -- always check to ensure Game Center is logged in
                       -- before doing a command, or the player will
                       -- get anoying warnings!
                            if (gamecenter.enabled() == true) then
                             gamecenter.showLeaderboards()
                            end
                     end

            end
