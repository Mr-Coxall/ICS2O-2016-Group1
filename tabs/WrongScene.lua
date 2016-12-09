WrongScene = class()

function WrongScene:init(x)
    -- you can accept and set parameters here
    self.x = x
end

function WrongScene:draw()
    -- Codea does not automatically call this method
end

function WrongScene:touched(touch)
    -- Codea does not automatically call this method
end
