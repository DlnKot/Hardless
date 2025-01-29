//
//  ViewController.swift
//  Hardless
//
//  Created by Даниил Липленко on 28.01.2025.
//

import UIKit

class HomeView: UIViewController {
    
    
    @IBOutlet weak var MainLabel: UITextView!
    
    @IBOutlet weak var DeleteButton: UIButton!
    @IBOutlet weak var EnterButton: UIButton!
    
    @IBOutlet var NumButtons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMainLabel()
        setUpNumbers()
        
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
        for num in NumButtons {
            num.layer.borderWidth = 1
            num.layer.cornerRadius = 25
            num.layer.borderColor = UIColor(named: "BorderColor")?.cgColor
            num.titleLabel?.adjustsFontSizeToFitWidth = true
        
        }
        EnterButton.setTitle("", for:  .normal)
        DeleteButton.setTitle("", for:  .normal)
        DeleteButton.setImage(UIImage(systemName: "delete.left.fill"), for: .normal)
        EnterButton.setImage(UIImage(systemName: "arrow.turn.down.left"), for: .normal)
        
        
    }
}

