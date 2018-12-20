--
--  AppDelegate.applescript
--  HelloXcode
--
--  Created by Jonas Steiner on 12/19/18.
--  Copyright © 2018 test. All rights reserved.
--

script AppDelegate
	property parent : class "NSObject"
	
	-- IBOutlets
	property theWindow : missing value
    
    property myButton : missing value
    property mysegButton : missing value
    
    on button:sender
        set numberButtonState to myButton's state as integer
        
        if numberButtonState is equal to 0 then
            log "state : 0"
            myButton's highlight:NO
            set numberButtonState to "OFF" as text
            myButton's setTitle:numberButtonState
            else if numberButtonState is equal to 1 then
            log "state : 1"
            myButton's highlight:TRUE
            set numberButtonState to "ON" as text
            myButton's setTitle:numberButtonState
        end if
    end button
    
    on segmentedButton:sender
        set numberSelectedSegment to mySegButton's selectedSegment as integer
        
        if numberSelectedSegment is equal to 0 then
            log "segment : 0"
            else if numberSelectedSegment is equal to 1 then
            log "segment : 1 "
            else if numberSelectedSegment is equal to 2 then
            log "segment : 2"
        end if
    end segmentedButton
	
	on applicationWillFinishLaunching_(aNotification)
        
        mysegButton's setLabel:"zero" forSegment:0
        mysegButton's setLabel:"one" forSegment:1
        mysegButton's setLabel:"two" forSegment:2

        myButton's setShowsBorderOnlyWhileMouseInside:YES

	end applicationWillFinishLaunching_
	
	on applicationShouldTerminate_(sender)
		-- Insert code here to do any housekeeping before your application quits 
		return current application's NSTerminateNow
	end applicationShouldTerminate_
	
end script
