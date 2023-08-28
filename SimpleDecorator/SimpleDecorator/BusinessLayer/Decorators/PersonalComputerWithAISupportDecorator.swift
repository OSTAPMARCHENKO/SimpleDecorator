//
//  PersonalComputerWithAISupportDecorator.swift
//  SimpleDecorator
//
//  Created by Ostap Marchenko on 28.08.2023.
//

final
class PersonalComputerWithAISupportDecorator: PersonalComputerDecorator {

    override var finalPrice: Int {
        super.finalPrice * 10
    }

    required init(_ personalComputer: PersonalComputerProtocol) {
        super.init(personalComputer)

        createSuportVoiceChat()
    }

    private func createSuportVoiceChat() {
        print("Hi, I'm SUPER PC!")
    }
}
