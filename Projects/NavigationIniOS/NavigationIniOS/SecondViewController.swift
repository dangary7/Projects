//
//  SecondViewController.swift
//  NavigationIniOS
//
//  Created by Apple User on 4/9/19.
//  Copyright © 2019 Apple User. All rights reserved.
//

import UIKit

final class SecondViewController: UIViewController {
    
    @IBOutlet weak var someLabel: UILabel!
    var stringToShow: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.someLabel.text = self.stringToShow ?? "no string to show"
    }
    @IBAction func goBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
