//
//  Vehicle.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
    
    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed: Double = 0.0
    var heading: Double = 0.0
  
    init(name: String, weight: Double, maxSpeed: Double){
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    func goFast(){
        speed = maxSpeed
    }
    
    func halt() {
        speed = 0.0
    }
    
    func accelerate(){
        speed += 0.1 * maxSpeed
        if speed + 0.1 * maxSpeed > maxSpeed {
            speed = maxSpeed
        } 
    }
    
    func decelerate() {
        speed -= 0.1 * maxSpeed
        if speed - 0.1 * maxSpeed < 0 {
            speed = 0
        }
    }
    
    func turnRight(){
        if speed > 0 {
            speed = 0.5 * speed
            heading += 90
            if heading > 360 {
                heading -= 360
            }
        }
    }
    
    func turnLeft() {
        if speed > 0 {
            speed = 0.5 * speed
            heading -= 90
            if heading < 0 {
                heading += 360
            }
        }
    }
    
    enum Transmission {
        case Automatic
        case Manual
    }
  
}

