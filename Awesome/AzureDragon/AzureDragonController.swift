//
//  AzureDragonController.swift
//  Awesome
//
//  Created by Nicholas on 2021/10/11.
//

import UIKit

class AzureDragonController: MainViewController {

    let data = AzureDragonModel().model
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: self.view.frame, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.prompt = NSLocalizedString("世界很美好！", comment: "")
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: (UIImage(systemName: "list.bullet")), style: .done, target: self, action: #selector(menuButtonClick(_:)))
        self.view.addSubview(tableView)
    }
    
}

extension AzureDragonController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        tableView.deselectRow(at: indexPath, animated: true)
        
        var vc = MainViewController()
        
        if indexPath.row == 0 {
            vc = MapViewController()
        } else if (indexPath.row == 1) {
            vc = NavBarViewController()
        } else {
            
        }
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension AzureDragonController {
    @objc func menuButtonClick(_ sender: AnyObject) {
        print("menu")
    }
}
