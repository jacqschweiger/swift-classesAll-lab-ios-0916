//
//  Jet.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
    
    override func climb() {
        if altitude < maxAltitude && inFlight && speed > 0 {
            altitude += maxAltitude * 0.2
            if altitude + 0.2 * maxAltitude > maxAltitude {
                altitude = maxAltitude
            }
        super.decelerate()
        }
    }
    

    override func dive(){
        if altitude > 0 && inFlight && speed < maxSpeed  {
            altitude -= maxAltitude * 0.2
            if altitude - 0.2 * maxAltitude < 0 {
                altitude = 0
            }
            super.accelerate()
        }
    }

    func afterburner() {
        if inFlight && speed == maxSpeed {
            speed = maxSpeed * 2
        }
    }

}
