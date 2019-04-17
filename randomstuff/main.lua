-----------------------------------------------------------------------------------------
--
-- Created by: Matsuru Hoshi
-- Created on: Apr 16, 2016
--
-- This will implement a d-pad to move a sprite
-----------------------------------------------------------------------------------------

local background = display.newImageRect( "assets/substreet.png", 1920, 1080)
background.x = display.contentCenterX
background.y = display.contentCenterY

local rightRect = display.newRoundedRect( 270, 480, 80, 60, 10)
rightRect:setFillColor( 1, 1, 1)
rightRect.alpha = 0.5

local luxoball = display.newImageRect( "assets/luxoball.png", 100, 98)
luxoball.x = display.contentCenterX
luxoball.y = 400

local rightArrow = display.newImageRect( "assets/arrow.png", 60, 60)
rightArrow.x = 270
rightArrow.y = 480

function rightArrow:touch( event )
    if ( event.phase == "moved" or event.phase == "ended" ) then
        -- move the character up
        transition.moveBy( luxoball, { 
        	x = 25, -- move 0 in the x direction 
        	y = 0, -- move up 50 pixels
        	time = 1 -- move in a 1/10 of a second
        	} )
    end

    return true
end

rightArrow:addEventListener( "touch", rightArrow )
