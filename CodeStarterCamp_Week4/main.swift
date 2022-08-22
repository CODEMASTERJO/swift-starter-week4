//
//  main.swift
//  CodeStarterCamp_Week4
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var jojoCondition: BodyCondition = BodyCondition(upperBodyStrengh: 50, lowerBodyStrengh: 50, muscularEndurance: 50, fatigue: 10)

sitUp.action(jojoCondition)
jojoCondition.printCurrentBodyCondition()
