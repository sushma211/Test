//
//  HotelsViewController.swift
//  Test
//
//  Created by Apple on 13/05/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class HotelsViewController: UIViewController,UITableViewDataSource,UITableViewDelegate,UISearchBarDelegate {
    
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var hotelTableView: UITableView!
    
    var resultData : HotelResponse? = nil
    var hotelData = [Restaurant]()
    
    func offlineJsonData() {
        if let path = Bundle.main.path(forResource: "HotelsJson", ofType: "json")
        {
            
            var jsonData : Data?
            do {
               jsonData = try Data(contentsOf: URL(fileURLWithPath: path), options: [])
            }catch {
                print(error)
            }
            
            
            if let jsonData = jsonData
            {
                do {
                    let json = try JSONDecoder().decode(HotelResponse.self, from: jsonData)
                    hotelData = json.restaurants
                    self.hotelTableView.reloadData()
                    
                }catch {
                    print(error)
                }
        }
    }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
         offlineJsonData()
        searchBar.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hotelData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResturantTableViewCell", for: indexPath) as? ResturantTableViewCell
        cell?.nameLbl.text = hotelData[indexPath.row].name
        cell?.addressLbl.text = hotelData[indexPath.row].address
        return cell!
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        hotelData = hotelData.filter({
            $0.name.contains(searchText) ||  $0.address.contains(searchText)
            
        })
        
        self.hotelTableView.reloadData()
    }

    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.text = ""
        offlineJsonData()
   
    }
    
    
    
    
 
    
    
}



