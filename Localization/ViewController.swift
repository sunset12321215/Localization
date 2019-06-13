//
//  ViewController.swift
//  Localization
//
//  Created by CuongVX-D1 on 6/13/19.
//  Copyright © 2019 CuongVX-D1. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
 
    @IBOutlet private weak var greetingLabel: UILabel!
    @IBOutlet private weak var quesionLabel: UILabel!
    @IBOutlet private weak var soldLabel: UILabel!
    @IBOutlet private weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDefaultLanguage()
    }
    
    private func setDefaultLanguage() {
        setEnglishLanguage()
    }
    
    private func setEnglishLanguage() {
        greetingLabel.text = "Hello"
        quesionLabel.text = "you like?"
        soldLabel.text = "you have sold 1000 apps in 1 month"
        imageView.image = UIImage(named: "English")
    }
    
    private func setSpanishLanguage() {
        greetingLabel.text = "Hola"
        quesionLabel.text = "¿te gusta?"
        soldLabel.text = "has vendido 1000 aplicaciones en 1 mes"
        imageView.image = UIImage(named: "Spanish")
    }
    
    private func setPolishLanguage() {
        greetingLabel.text = "Dzień dobry"
        quesionLabel.text = "lubisz?"
        soldLabel.text = "sprzedałeś 1000 aplikacji w ciągu 1 miesiąca"
        imageView.image = UIImage(named: "Polish")
    }

    @IBAction func ChoiseLanguageAction(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            setEnglishLanguage()
        case 1:
            setSpanishLanguage()
        case 2:
            setPolishLanguage()
        default:
            break;
        }
    }
}

