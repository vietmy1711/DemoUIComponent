//
//  PresentViewController.swift
//  DemoUI
//
//  Created by MM on 8/31/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class PresentViewController: UIViewController {

    @IBOutlet weak var btnPresent: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func setupUI() {
        btnPresent.layer.cornerRadius = btnPresent.bounds.height / 2
    }
    
    @IBAction func btnPresentClicked(_ sender: UIButton) {
        let anotherVC = AnotherViewController()
        //anotherVC.modalPresentationStyle = .fullScreen
        self.present(anotherVC, animated: true) {
            print("Present")
        }
    }
}
