//
//  DetailViewController.swift
//  Project 15c - Milestone - Countries
//
//  Created by Sean Williams on 23/10/2019.
//  Copyright © 2019 Sean Williams. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var flagView: UIView!
    @IBOutlet var flagLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var capitalCityLabel: UILabel!
    @IBOutlet var regionLabel: UILabel!
    @IBOutlet var subregionLabel: UILabel!
    @IBOutlet var language: UILabel!
    
    
    
    var country: Country!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        flagLabel.text = country.flag
        titleLabel.text = country.name.common.uppercased()
        capitalCityLabel.text = "Capital City: \(country.capital[0])"
        regionLabel.text = "Region: \(country.region.rawValue)"
        subregionLabel.text = "Sub-Region: \(country.subregion)"
        let languages = country.languages
        var languagesString = ""
        for value in languages.values {
            languagesString.append("\(value), ")
            
        }
        languagesString.removeLast(2)
        language.text = "Languages: \(languagesString)"

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
