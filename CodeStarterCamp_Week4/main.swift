//
//  main.swift
//  CodeStarterCamp_Week4
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var jojoCondition: BodyCondition = BodyCondition(upperBodyStrength: 100, lowerBodyStrength: 80, muscularEndurance: 70, fatigue: 30)

sitUp.action(jojoCondition)
jojoCondition.printCurrentBodyCondition()
dynamicRest.action(jojoCondition)
jojoCondition.printCurrentBodyCondition()
