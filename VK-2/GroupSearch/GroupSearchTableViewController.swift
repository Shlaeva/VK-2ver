//
//  GroupSearchTableViewController.swift
//  VK-2
//
//  Created by Julie on 12.12.2020.
//

import UIKit

class GroupSearchTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return group.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupSearchCell", for: indexPath) as! GroupSearchCell

        cell.groupName.text! = group[indexPath.row].groupName
        cell.groupImage.image = group[indexPath.row].groupImage

        return cell
    }
    
//     работает как show (экран появляется как новый, не возвращается обратно) и для добавления одной группы с замещением предыдущей добавленной
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(indexPath.row)
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let myGroupTableViewController = storyboard.instantiateViewController(identifier: "myGroupTableViewController") as! MyGroupTableViewController
//        myGroupTableViewController.myGroup.append( group[indexPath.row])
//        myGroupTableViewController.tableView.reloadData()
//        self.show(myGroupTableViewController, sender: nil)
//    }
//   
}
