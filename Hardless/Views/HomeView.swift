//
//  ViewController.swift
//  Hardless
//
//  Created by Даниил Липленко on 28.01.2025.
//

import UIKit

class HomeView: UIViewController {
    
    
    @IBOutlet weak var MainLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
    }

    
    private func setupUI(){
        MainLabel.layer.borderWidth = 1
        MainLabel.layer.borderColor = UIColor(named: "BorderColor")?.cgColor
        MainLabel.layer.cornerRadius = 10
        
    }
}

