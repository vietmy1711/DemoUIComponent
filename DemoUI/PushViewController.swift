//
//  ViewController.swift
//  DemoUI
//
//  Created by MM on 8/24/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class PushViewController: UIViewController {
    //MARK: - Outlets
    
    @IBOutlet weak var lblLabel: UILabel!
    @IBOutlet weak var btnButton: UIButton!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var switchControl: UISwitch!
    @IBOutlet weak var txfTextField: UITextField!
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard)))
        txfTextField.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.tabBar.isHidden = false
        navigationItem.title = "Push View Controller"
    }
    
    @IBAction func btnClicked(_ sender: UIButton) {
        print("=== btnClicked ===")
        let anotherVC = AnotherViewController()
        navigationController?.pushViewController(anotherVC, animated: true)
    }
    
    @IBAction func segmentedControlValueChanged(_ sender: UISegmentedControl) {
        print("=== segmentedControlValueChanged index: \(sender.selectedSegmentIndex) ===")
    }
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        print("=== switchValueChanged value: \(sender.isOn) ===")
    }
    
    @IBAction func txfEditingDidEnd(_ sender: UITextField) {
        print("=== txfEditingDidEnd ===")
        lblLabel.text = txfTextField.text
    }
    
    //Check: https://medium.com/@KaushElsewhere/how-to-dismiss-keyboard-in-a-view-controller-of-ios-3b1bfe973ad1
    @objc func dismissKeyboard() {
        self.view.endEditing(true)
    }

}

//MARK: - UITextFieldDelegate
extension PushViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("=== textFieldDidEndEditing ===")
    }
}
