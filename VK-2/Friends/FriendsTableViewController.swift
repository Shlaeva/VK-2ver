//
//  FriendsTableViewController.swift
//  VK-2
//
//  Created by Julie on 12.12.2020.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    @IBOutlet weak var searchFriendsBar: UISearchBar!
//    переменная для хэдера и секций
    var index: [String] = []
//    переменная для поиска
    var friendList: [User]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        для активации строки поиска
        searchFriendsBar.delegate = self

//        цвет таблиц во всем приложении и кастомный хэдер
        let tableViewAppearance = UITableView.appearance()
        tableViewAppearance.backgroundColor = .systemIndigo
        tableView.register(CustomHeader.self, forHeaderFooterViewReuseIdentifier: "customHeader")
        
        friendList = user
        
    }
    
//    title для хэдера и секций
    func SetSectionIndex() {
        for friend in friendList {
            let firstLetter = String(friend.userName.first!)
            if index.contains(firstLetter) {
                continue
            } else { index.append(firstLetter) }
        }
        return index.sort(by: <)
    }
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        index = []
        SetSectionIndex()
        return index.count
    }
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        index = []
        SetSectionIndex()
        return index
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var friendRow = [User]()
        for friend in friendList {
            if index[section].contains(friend.userName.first!) {
                friendRow.append(friend)
            }
        }
        return friendRow.count
    }
    
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = tableView.dequeueReusableHeaderFooterView(withIdentifier: "customHeader") as! CustomHeader
        index = []
        SetSectionIndex()
        
        view.textLabel?.text = index[section]
        return view
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        index = []
        SetSectionIndex()
        return index[section]
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as! FriendsCell
        
        
        var friendRow = [User]()
        
        for friend in friendList {
            if index[indexPath.section].contains(friend.userName.first!) {
                friendRow.append(friend)
            }
        }
            
        cell.friendName.text! = friendRow[indexPath.row].userName
        cell.friendCustomImageView.setImage(friendRow[indexPath.row].userImage)
        
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

extension FriendsTableViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {

        friendList = []
        
        if searchText == "" {
            friendList = user
            tableView.reloadData()

        } else {
            user.forEach { friend in
                if friend.userName.lowercased().contains(searchText.lowercased()) {
                    friendList.append(friend)
                    tableView.reloadData()
                    print(friendList ?? [])
                }
            }
        }
    }
}
