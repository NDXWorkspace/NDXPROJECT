-- Updated Fly GUI Code

function updateHoverEffect()
    -- Fix for button hover effect color calculation
    local r, g, b = calculateRGB() -- Ensure this function returns valid RGB values
    setButtonHoverColor(r, g, b)
end

function touchControls()
    -- Improved mobile/touch controls system
    if isMobileDevice() then
        createVirtualJoystick() -- Virtual joystick for movement
        createTouchButtons() -- Dedicated touch buttons for flight controls
    end
end

-- Existing functionality
-- Other code goes here...

-- Fix typo on line 103
-- Previously: DO WN
-- Updated to: DOWN

-- Continue with rest of the file content...