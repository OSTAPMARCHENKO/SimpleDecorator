//
//  PersonalComputerDecorator.swift
//  SimpleDecorator
//
//  Created by Ostap Marchenko on 28.08.2023.
//

import Foundation

class PersonalComputerDecorator: PersonalComputerProtocol {

    let personalComputer: PersonalComputerProtocol

    var RAMMB: Int {
        personalComputer.RAMMB
    }

    var finalPrice: Int {
        personalComputer.finalPrice
    }

    required init(_ personalComputer: PersonalComputerProtocol) {
        self.personalComputer = personalComputer
    }
}
