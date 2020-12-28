//
//  FriendsTableViewController.swift
//  VK-2
//
//  Created by Julie on 12.12.2020.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    var sections: [String: [User]] = [:]
    var keys: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        user.forEach { friend in
            let firstLetter = String(friend.userName.first!)
            if sections[firstLetter] != nil {
                sections[firstLetter]?.append(friend)
            } else { sections[firstLetter] = [friend] }
        }
        keys = Array(sections.keys).sorted(by: <)
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return keys
    }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let key = keys[section]
        let count = sections[key]!.count
        return count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return keys[section]
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as! FriendsCell
        
        let key = keys[indexPath.section]
        let friend = sections[key]![indexPath.row]
        
        cell.friendName.text! = friend.userName
        cell.friendCustomImageView.setImage(friend.userImage)
        
        return cell
    }
    

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        guard segue.identifier == "showPics" else { return }
        
        let cell = sender as! FriendsCell
        let friendName = cell.friendName.text!
        
        guard let PicturesController = segue.destination as? PicturesCollectionViewController else { return }
            // Pass the selected object to the new view controller.
        PicturesController.name = friendName
        
    }
    

}
