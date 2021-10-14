//
//  MainViewController.swift
//  Awesome
//
//  Created by Nicholas on 2021/10/12.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backBarButtton = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem = backBarButtton
        
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.barTintColor = .systemBrown
        view.backgroundColor = .white
    }

}
