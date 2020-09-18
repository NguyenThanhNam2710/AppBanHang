//
//  ViewController2.swift
//  AppBanHang
//
//  Created by Nguyen Thanh Nam on 9/18/20.
//

import UIKit

class ViewController2: UIViewController,UITableViewDataSource {

    var mang:[String]!
    var mang1:[String]!
    

    @IBOutlet weak var myTable: UITableView!
    @IBOutlet weak var myTable1: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.dataSource = self
        myTable1.dataSource = self
        mang = ["Android","IOS","Unity"]
        mang1 = ["duong","muoi","sua"]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if tableView.tag == 0 {
            return mang.count
        } else {
            return mang1.count
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL")
        if tableView.tag == 0 {
            
            cell?.textLabel?.text = mang[indexPath.row]
            // them detail
            cell?.detailTextLabel?.text = "Dong " + String(indexPath.row)
        } else {
            
            cell?.textLabel?.text = mang1[indexPath.row]
            // them detail
            cell?.detailTextLabel?.text = "Dong " + String(indexPath.row)
        }
        
        return cell!
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section " + String(section)
    }
}
