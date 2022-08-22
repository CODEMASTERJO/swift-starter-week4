//
//  File.swift
//  CodeStarterCamp_Week4
//
//  Created by 조용현 on 2022/08/22.
//

import Foundation

struct Activity {
    let name : String
    let action: (BodyCondition) -> Void
}

let sitUp: Activity = Activity(name: "윗몸일으키기", action: { (bodyCondition: BodyCondition) in
    bodyCondition.upperBodyStrengh += Int.random(in: 10...20)
    bodyCondition.fatigue += Int.random(in: 10...20)
})

let squat: Activity = Activity(name: "스쿼트", action: { (bodyCondition: BodyCondition) in
    bodyCondition.lowerBodyStrengh += Int.random(in: 23...30)
    bodyCondition.fatigue += Int.random(in: 10...20)
})

let longRunning: Activity = Activity(name: "오래달리기", action: { (bodyCondition: BodyCondition) in
    bodyCondition.muscularEndurance += Int.random(in: 20...30)
    bodyCondition.upperBodyStrengh += Int.random(in: 5...10)
    bodyCondition.lowerBodyStrengh += Int.random(in: 5...10)
    bodyCondition.fatigue += Int.random(in: 20...30)
})

let dynamicRest: Activity = Activity(name: "동적휴식", action: { (bodyCondition: BodyCondition) in
    if bodyCondition.fatigue > 10 {
    bodyCondition.fatigue -= Int.random(in: 10...20)
    } else {
        bodyCondition.fatigue = 0
    }
})

let jiuJitsu: Activity = Activity(name: "주짓수", action: { (bodyCondition: BodyCondition) in
    bodyCondition.upperBodyStrengh += Int.random(in: 5...10)
    bodyCondition.lowerBodyStrengh += Int.random(in: 5...10)
    bodyCondition.fatigue += Int.random(in: 10...20)
})
