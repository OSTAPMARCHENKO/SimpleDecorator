//
//  PersonalComputerWithBigRam.swift
//  SimpleDecorator
//
//  Created by Ostap Marchenko on 28.08.2023.
//

final
class PersonalComputerWithBigRamDecorator: PersonalComputerDecorator {

    override var finalPrice: Int {
        super.finalPrice * 4
    }

    override var RAMMB: Int {
        super.RAMMB * 10
    }

    required init(_ personalComputer: PersonalComputerProtocol) {
        super.init(personalComputer)
    }
}
