//
//  File.swift
//  CodeStarterCamp_Week4
//
//  Created by 조용현 on 2022/08/22.
//

import Foundation

class BodyCondition {
    var upperBodyStrengh: Int
    var lowerBodyStrengh: Int
    var muscularEndurance: Int
    var fatigue: Int
    
    init(upperBodyStrengh: Int, lowerBodyStrengh: Int, muscularEndurance: Int, fatigue: Int) {
        self.upperBodyStrengh = upperBodyStrengh
        self.lowerBodyStrengh = lowerBodyStrengh
        self.muscularEndurance = muscularEndurance
        self.fatigue = fatigue
    }
        3
    func printCurrentBodyCondition() {
        print("""
        현재의 컨디션은 다음과 같습니다.
        상체근력: \(upperBodyStrengh)
        하체근력: \(lowerBodyStrengh)
        근지구력: \(muscularEndurance)
        피로도: \(fatigue)
        --------------
        """)
    }
}
