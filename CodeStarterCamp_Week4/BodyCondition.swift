//
//  File.swift
//  CodeStarterCamp_Week4
//
//  Created by 조용현 on 2022/08/22.
//

import Foundation

class BodyCondition {
    var upperBodyStrength: Int {
        didSet {
            print("상체근력이 \(upperBodyStrength - oldValue) 상승합니다.")
        }
    }
    var lowerBodyStrength: Int {
        didSet {
            print("하체근력이 \(lowerBodyStrength - oldValue) 상승합니다.")
        }
    }
    var muscularEndurance: Int {
        didSet {
            print("근지구력이 \(muscularEndurance - oldValue) 상승합니다.")
        }
    }
    var fatigue: Int {
        didSet {
            if fatigue > oldValue {
                print("피로도가 \(fatigue - oldValue) 상승합니다.")
            }
        }
    }
        
    
    init(upperBodyStrength: Int, lowerBodyStrength: Int, muscularEndurance: Int, fatigue: Int) {
        self.upperBodyStrength = upperBodyStrength
        self.lowerBodyStrength = lowerBodyStrength
        self.muscularEndurance = muscularEndurance
        self.fatigue = fatigue
    }
        
    func printCurrentBodyCondition() {
        print("""
        --------------
        현재의 컨디션은 다음과 같습니다.
        상체근력: \(upperBodyStrength)
        하체근력: \(lowerBodyStrength)
        근지구력: \(muscularEndurance)
        피로도: \(fatigue)
        --------------
        """)
    }
    
    func raiseUpperBodyStrength(_ strength: Int) {
        self.upperBodyStrength += strength
    }
    
    func raiseLowerBodyStrength(_ strength: Int) {
        self.lowerBodyStrength += strength
    }
    
    func raiseMuscularEndurance(_ endurance: Int) {
        self.muscularEndurance += endurance
    }
    
    func raiseFatigue(_ fatigue: Int) {
        self.fatigue += fatigue
    }
    
    func dropFatigue(_ fatigue: Int) {
        self.fatigue -= fatigue
        checkFatigueNagativeNumber(fatigue)
    }
    
    func checkFatigueNagativeNumber(_ fatigue: Int) {
        if self.fatigue < 0 {
            self.fatigue = 0
        }
    }
}
