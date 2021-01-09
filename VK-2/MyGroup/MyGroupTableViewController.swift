//
//  MyGroupTableViewController.swift
//  VK-2
//
//  Created by Julie on 12.12.2020.
//

import UIKit

class MyGroupTableViewController: UITableViewController {

    var myGroup: [Group] = []
    
    @IBAction func addGroup(seque:UIStoryboardSegue) {
        if seque.identifier == "addGroup" {
            // Получаем ссылку на контроллер, с которого осуществлен переход
            guard let GroupSearchController = seque.source as? GroupSearchTableViewController else { return }
            // Получаем индекс выделенной ячейки
            if let indexPath = GroupSearchController.tableView.indexPathForSelectedRow {
                let myNewGroup = group[indexPath.row]
                // Проверяем, что такой группы нет в списке
                if !myGroup.contains(myNewGroup) {
                myGroup.append(myNewGroup)
                tableView.reloadData()
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myGroup.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myGroupCell", for: indexPath) as! MyGroupsCell

        cell.myGroupName.text! = myGroup[indexPath.row].groupName
        cell.myGroupImage.image! = myGroup[indexPath.row].groupImage

        return cell
    }
    

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
       
        // Если была нажата кнопка «Удалить
        if editingStyle == .delete {
        // Удаляем группу из массива
            myGroup.remove(at: indexPath.row)
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        }

    }

}
