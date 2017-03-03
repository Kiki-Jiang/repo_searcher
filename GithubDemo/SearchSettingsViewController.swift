//
//  SearchSettingsViewController.swift
//  GithubDemo
//
//  Created by 蒋逍琦 on 3/2/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class SearchSettingsViewController: UIViewController {
    
    weak var delegate: SettingsPresentingViewControllerDelegate?
    var settings = GithubRepoSearchSettings()
   
    @IBOutlet weak var sliderValue: UISlider!
    
    @IBOutlet weak var valueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /*override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        sliderValue.value = Float(settings.minStars)
        valueLabel.text = "\(Int(sliderValue.value))"
    }*/

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func minimumChange(_ sender: Any) {
        //settings.minStars = Int(sliderValue.value)
        valueLabel.text = "\(Int(sliderValue.value))"
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        settings.minStars = Int(sliderValue.value)
        self.delegate?.didSaveSettings(settings: settings)
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        self.delegate?.didCancelSettings()
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

protocol SettingsPresentingViewControllerDelegate: class {
    func didSaveSettings(settings: GithubRepoSearchSettings)
    func didCancelSettings()
}
