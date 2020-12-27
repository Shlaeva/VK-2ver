//
//  FriendsTableViewController.swift
//  VK-2
//
//  Created by Julie on 12.12.2020.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return user.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as! FriendsCell
        
        cell.friendName.text! = user[indexPath.row].userName
        cell.friendCustomImageView.setImage(user[indexPath.row].userImage)
        
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
