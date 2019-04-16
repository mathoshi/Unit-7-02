-----------------------------------------------------------------------------------------
--
-- Created by: Matsuru Hoshi
-- Created on: Apr 16, 2016
--
-- This will implement a d-pad to move a sprite
-----------------------------------------------------------------------------------------

local rightArrow = display.newImageRect( "assets/luxoball.png")

function rightArrow:touch( event )
    if ( event.phase == "moved" ) then
        -- move the character up
        transition.moveBy( theCharacter, { 
        	x = 0, -- move 0 in the x direction 
        	y = -50, -- move up 50 pixels
        	time = 100 -- move in a 1/10 of a second
        	} )
    end

    return true
end

upArrow:addEventListener( "touch", rightArrow )
