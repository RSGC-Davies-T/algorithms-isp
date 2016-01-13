//
//  Sketch.swift
//  Animation
//
//  Created by Russell Gordon on 2015-12-05.
//  Copyright © 2015 Royal St. George's College. All rights reserved.
//

import Foundation

class Sketch {

    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Declare any properties you need for your sketch below this comment, but before init()
    var x = 0
     var y = 0
    var d = 0
    var s = 1

    // This runs once, equivalent to setup() in Processing
    init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 1280, height: 800)
        
        // The frame rate can be adjusted; the default is 60 fps
        canvas.framesPerSecond = 900
        
    }
    
    // Runs repeatedly, equivalent to draw() in Processing
    func draw() {
                
        // Horizontal position of circle
        x = x + s
        
        // Bounce when hitting wall
        if (y > canvas.height || y < 0) {
            d *= -1
        }
        
        // Clear the background
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
        canvas.drawRectangle(bottomRightX: 0, bottomRightY: 0, width: canvas.width, height: canvas.height)
        
        // Draw a circle that moves across the screen
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color(hue: Float(canvas.frameCount), saturation: 80, brightness: 90, alpha: 100)
        canvas.drawEllipse(centreX: x, centreY: canvas.height / 2, width: 91, height: 91)
        
    }
    
}