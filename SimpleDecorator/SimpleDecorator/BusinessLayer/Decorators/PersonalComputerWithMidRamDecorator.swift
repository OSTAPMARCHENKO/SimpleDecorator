//
//  PersonalComputerWithMidRamDecorator.swift
//  SimpleDecorator
//
//  Created by Ostap Marchenko on 28.08.2023.
//

final
class PersonalComputerWithMidRamDecorator: PersonalComputerDecorator {

    override var finalPrice: Int {
        super.finalPrice * 2
    }

    override var RAMMB: Int {
        super.RAMMB * 5
    }

    required init(_ personalComputer: PersonalComputerProtocol) {
        super.init(personalComputer)
    }
}
