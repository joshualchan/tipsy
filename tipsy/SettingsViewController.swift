//
//  SettingsViewController.swift
//  tipsy
//
//  Created by Joshua Chan on 3/1/20.
//  Copyright © 2020 Joshua Chan. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

  
    
    
    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    
    @IBOutlet weak var colorTheme: UISegmentedControl!
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let index = defaults.integer(forKey: "index")
        defaultTipControl.selectedSegmentIndex = index
        let index2 = defaults.integer(forKey: "ctindex")
        if index2 == 0{
            overrideUserInterfaceStyle = .light
        }
        else{
            overrideUserInterfaceStyle = .dark
        }
        colorTheme.selectedSegmentIndex = index2
    }
    
    
    @IBAction func onChange(_ sender: Any) {
        let index = defaultTipControl.selectedSegmentIndex
        defaults.set(index, forKey: "index")
        defaults.synchronize()
    }
    
    
    @IBAction func onChange2(_ sender: Any) {
        let index = colorTheme.selectedSegmentIndex
        if index == 0{
            overrideUserInterfaceStyle = .light
        }
        else{
            overrideUserInterfaceStyle = .dark
        }
        defaults.set(index, forKey: "ctindex")
        defaults.synchronize()
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
