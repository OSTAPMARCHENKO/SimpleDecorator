//
//  ViewController.swift
//  SimpleDecorator
//
//  Created by Ostap Marchenko on 28.08.2023.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Properies(Private)

    private var selectedPC: PersonalComputerProtocol? {
        didSet {
            updateView()
        }
    }

    // MARK: - IBOutelts

    @IBOutlet private var pcPriceLabel: UILabel!

    // MARK: - IBActions

    @IBAction private func selectBasePCPressed() {
        selectedPC = BasePersonalComputer()
    }

    @IBAction private func selectMidRamPCPressed() {
        let pc = BasePersonalComputer()
        selectedPC = PersonalComputerWithMidRamDecorator(pc)
    }

    @IBAction private func selectBigRamPCPressed() {
        let pc = BasePersonalComputer()
        selectedPC = PersonalComputerWithBigRamDecorator(pc)
    }

    @IBAction private func selectWithAIPCPressed() {
        // let's create Big RAM PC first
        let pc = BasePersonalComputer()
        let bigRamPC = PersonalComputerWithBigRamDecorator(pc)
        selectedPC = PersonalComputerWithAISupportDecorator(bigRamPC)
    }

    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        showEmptyStateView()
    }

    // MARK: - Methods(Private)
    
    private func updateView() {
        guard let selectedPC = selectedPC else {
            showEmptyStateView()
            return
        }

        pcPriceLabel.text = String(selectedPC.finalPrice) + "$"
    }

    private func showEmptyStateView() {
        pcPriceLabel.text = "No PC selected =("
    }
}

