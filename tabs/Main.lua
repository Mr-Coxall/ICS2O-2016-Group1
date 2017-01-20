-- ICS2O-2016-Group1
-- Main

-- Created by: Mr. Coxall
-- Created on: Nov-2016
-- Created for: ICS2O
-- This is the project for Group #1-2016
-- This is the initialization Main code to get the game started

-- this turns on Game Center simulation from the Helper Class
-- this is so you can call Game Center code within Codea 
-- and just set this boolean to "false" before you export to Xcode
DEBUG_GAMECENTER = true

-- Global variables to the entire project

-- local variables to this scene


-- Use this function to perform your initial setup
function setup()
    -- set up display options
    supportedOrientations(LANDSCAPE_ANY)
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()    
    
    Scene("companyLogoScene", CompanyLogoScene)
    Scene("gameLogoScene", GameLogoScene)
    Scene("gameMenu" , GameMenuScene)
    Scene("settings" , SettingsScene)
    Scene("characterShop" , CharacterShopScene)
    Scene("achievments" , AchievmentsScene)
    Scene("worldSelection" , WorldSelectionScene)
    Scene("world1" , World1Scene)
    Scene("world2" , World2Scene)
    Scene("world3" , World3Scene)
    Scene("world1GameScene", World1GameScene)
    Scene("world2GameScene", World2GameScene)
    Scene("world3GameScene", World3GameScene)
    Scene("gameCenterLogin" , GameCenterLoginScene)
    Scene("resetGame" , ResetGameScene)
    Scene("credits" , CreditsScene)
    Scene("help1" , Help1Scene)
    Scene("help2" , Help2Scene)
    
    Scene.Change("companyLogoScene")
end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    background(0, 0, 0, 255)

    -- Do your drawing here
    Scene.Draw() 
end

-- This function gets called once every frame
function touched(touch)
    -- Do your touching code here
    Scene.Touched(touch) 
end

