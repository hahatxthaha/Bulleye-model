//
//  game.swift
//  Bulleye (iOS)
//
//  Created by yujiejhang on 2022/12/14.
//

import Foundation

struct Game {
    var target = Int.random(in: 1..<100)
    var score = 0
    var round = 1
// clean code
    func points(sliderValue: Int) -> Int {
//        let difference = abs(target - sliderValue)
//        let awardedPoints = 100 - difference
        return 100 - abs(target - sliderValue)
    }
    
//        Challenge 1
//    func points(sliderValue: Int) -> Int {
//        let difference: Int = abs(self.target - sliderValue)
//        var difference : Int
//        if sliderValue > self.target {
//            difference = sliderValue - self.target
//        } else if self.target > sliderValue {
//            difference = self.target - sliderValue
//        } else {
//            difference = 0
//        }
//        shorter version by myself
//        var difference : Int
//        if sliderValue - self.target <= 0 {
//            difference = (sliderValue - self.target) * -1
//        } else {
//            difference = sliderValue - self.target
//        }
//        better version
//        var difference : Int = self.target - sliderValue
//        if difference < 0 {
//            difference *= -1 // difference = - difference
//        }
//        let awardedPoints : Int = 100 - difference
//        return awardedPoints
//    }
}

