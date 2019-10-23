//
//  CountriesTableViewController.swift
//  Project 15c - Milestone - Countries
//
//  Created by Sean Williams on 22/10/2019.
//  Copyright © 2019 Sean Williams. All rights reserved.
//

import UIKit

class CountriesTableViewController: UITableViewController {
    
    var countries = [Country]()
    var chosenCountry: Country!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        if let path = Bundle.main.path(forResource: "countries", ofType: "json") {
            let url = URL(fileURLWithPath: path)
            let jsonDecoder = JSONDecoder()
            
            if let data = try? Data(contentsOf: url) {
                do {
                    countries = try jsonDecoder.decode([Country].self, from: data)
            } catch {
                debugPrint(error)
            }
        }
    }
    }

    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return countries.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        // Configure the cell...
        cell.textLabel?.text = countries[indexPath.row].name.common
        cell.detailTextLabel?.text = countries[indexPath.row].flag
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenCountry = countries[indexPath.row]
        performSegue(withIdentifier: "Detail", sender: self)
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! DetailViewController
        // Pass the selected object to the new view controller.
        vc.country = chosenCountry
    }
    

}
