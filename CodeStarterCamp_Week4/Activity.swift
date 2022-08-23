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
    print("<<\(sitUp.name)을(를) 시작합니다.>>")
    bodyCondition.raiseUpperBodyStrength(Int.random(in: 10...20))
    bodyCondition.raiseFatigue(Int.random(in: 10...20))
    print("--------------")
    bodyCondition.printCurrentBodyCondition()
})

let squat: Activity = Activity(name: "스쿼트", action: { (bodyCondition: BodyCondition) in
    print("<<\(squat.name)을(를) 시작합니다.>>")
    bodyCondition.raiseLowerBodyStrength(Int.random(in: 20...30))
    bodyCondition.raiseFatigue(Int.random(in: 10...20))
    print("--------------")
    bodyCondition.printCurrentBodyCondition()
})

let longRunning: Activity = Activity(name: "오래달리기", action: { (bodyCondition: BodyCondition) in
    print("<<\(longRunning.name)을(를) 시작합니다.>>")
    bodyCondition.raiseMuscularEndurance(Int.random(in: 20...30))
    bodyCondition.raiseUpperBodyStrength(Int.random(in: 5...10))
    bodyCondition.raiseLowerBodyStrength(Int.random(in: 5...10))
    bodyCondition.raiseFatigue(Int.random(in: 20...30))
    print("--------------")
    bodyCondition.printCurrentBodyCondition()
})

let dynamicRest: Activity = Activity(name: "동적휴식", action: { (bodyCondition: BodyCondition) in
    print("<<\(dynamicRest.name)을(를) 시작합니다.>>")
    bodyCondition.dropFatigue(Int.random(in: 5...10))
    if bodyCondition.fatigue < 0 {
        bodyCondition.fatigue = 0
    }
    print("--------------")
    bodyCondition.printCurrentBodyCondition()
})

let jiuJitsu: Activity = Activity(name: "주짓수", action: { (bodyCondition: BodyCondition) in
    print("<<\(jiuJitsu.name)을(를) 시작합니다.>>")
    bodyCondition.raiseUpperBodyStrength(Int.random(in: 10...20))
    bodyCondition.raiseLowerBodyStrength(Int.random(in: 10...20))
    bodyCondition.raiseFatigue(Int.random(in: 10...20))
    print("--------------")
    bodyCondition.printCurrentBodyCondition()
})
