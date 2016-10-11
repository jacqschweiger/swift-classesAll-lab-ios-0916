//
//  Plane.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle {
    let maxAltitude: Double
    var altitude: Double = 0
    var inFlight: Bool {
        if speed > 0 && altitude > 0 {
            return true
        } else {
            return false
        }
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double){
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff(){
        if inFlight == false {
            speed = 0.1 * maxSpeed
            altitude = 0.1 * maxAltitude
        }
    }

    func land(){
        speed = 0
        altitude = 0
    }
    
    func climb() {
        if altitude < maxAltitude && inFlight && speed > 0 {
            altitude += maxAltitude * 0.1
            if altitude + 0.1 * maxAltitude > maxAltitude {
                altitude = maxAltitude
            }
            super.decelerate()
        }
    }
    
    
    func dive(){
        if altitude > 0 && inFlight && speed < maxSpeed {
            altitude -= maxAltitude * 0.1
            if altitude - 0.1 * maxAltitude < 0 {
                altitude = 0
            }
            super.accelerate()
        }
    }
    
    func bankRight(){
        if inFlight {
            heading += 45
            if heading > 360 {
                heading = heading - 360
            }
            else if heading < 0 {
                heading = 360 + heading
            }
        }
        speed = 0.9 * speed
    }
    
    
    func bankLeft(){
        if inFlight {
            heading -= 45
            if heading > 360 {
                heading = heading - 360
            }
            else if heading < 0 {
                heading = 360 + heading
            }
        }
        speed = 0.9 * speed
    }
    
    
}
