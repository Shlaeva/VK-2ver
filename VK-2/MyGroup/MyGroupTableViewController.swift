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
            // Получаем индекс выделенной ячейк
            if let indexPath = GroupSearchController.tableView.indexPathForSelectedRow {
                let myNewGroup = group[indexPath.row]
                // Проверяем, что такого города нет в списке
                if !myGroup.contains(myNewGroup) {
                myGroup.append(myNewGroup)
                tableView.reloadData()
                }
            }
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

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
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
       
        // Если была нажата кнопка «Удалить
        if editingStyle == .delete {
            // Удаляем город из массива
            myGroup.remove(at: indexPath.row)
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
//        else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
//        }
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
