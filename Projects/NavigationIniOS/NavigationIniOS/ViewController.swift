//
//  ViewController.swift
//  NavigationIniOS
//
//  Created by Apple User on 4/9/19.
//  Copyright © 2019 Apple User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "TheSegue", let secondViewController = segue.destination as? SecondViewController else { return }
        secondViewController.stringToShow = "this is passed in when navigating with segues"
    }

    @IBAction func navigateProgramatically(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil) //initialize the view controller
        let viewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        viewController.stringToShow = "this is passed in when programmatically navigating" //Passing a string to show in the screen
        self.navigationController?.pushViewController(viewController, animated: true) //Pushing into the navigation stack
    }
    
}

