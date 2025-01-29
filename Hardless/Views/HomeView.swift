//
//  ViewController.swift
//  Hardless
//
//  Created by Даниил Липленко on 28.01.2025.
//

import UIKit

class HomeView: UIViewController {
    
    
    @IBOutlet weak var MainLabel: UITextView!
    
    @IBOutlet var NumButton: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMainLabel()
        
    }

    
    private func setupMainLabel(){
        MainLabel.layer.borderWidth = 1
        MainLabel.layer.borderColor = UIColor(named: "BorderColor")?.cgColor
        MainLabel.layer.cornerRadius = 10
        MainLabel.textContainerInset = UIEdgeInsets(top: 0, left: 10, bottom: 5, right: 10)
        MainLabel.text = "254"
        MainLabel.isScrollEnabled = false
        MainLabel.isEditable = false
        MainLabel.isSelectable = false
        NSLayoutConstraint.activate([
            MainLabel.widthAnchor.constraint(equalToConstant: 200),
            MainLabel.heightAnchor.constraint(equalToConstant: 100)
        ])
        MainLabel.font = UIFont.systemFont(ofSize: 54)
        MainLabel.adjustsFontForContentSizeCategory = true
       
    }
    
    private func setUpNumbers() {
        for num in NumButton {
            num.layer.cornerRadius = 25
        
        }
        
    }
}

