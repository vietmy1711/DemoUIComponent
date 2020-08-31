//
//  AnotherViewController.swift
//  DemoUI
//
//  Created by MM on 8/31/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class AnotherViewController: UIViewController {

    private let btnBack: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .systemTeal
        btn.setTitle("Back", for: .normal)
        btn.titleLabel?.font = .boldSystemFont(ofSize: 30)
        btn.layer.cornerRadius = 12
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(btnBackClicked), for: .touchUpInside)
        return btn
    }()
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        print("=== Life cycle: viewDidLoad ===")
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("=== Life cycle: viewWillAppear ===")
        navigationItem.title = "Another View Controller"
        tabBarController?.tabBar.isHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("=== Life cycle: viewDidAppear ===")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("=== Life cycle: viewWillDisappear ===")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("=== Life cycle: viewDidDisappear ===")
    }
    
    func setupUI() {
        view.backgroundColor = .white
        view.addSubview(btnBack)
        
        btnBack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        btnBack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        btnBack.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
    }
    
    @objc func btnBackClicked() {
        if navigationController != nil {
            navigationController?.popViewController(animated: true)
        } else {
            self.dismiss(animated: true) {
                print("Dismiss")
            }
        }
    }
}
