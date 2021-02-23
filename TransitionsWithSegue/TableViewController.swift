//
//  TableViewController.swift
//  TransitionsWithSegue
//
//  Created by Nikita Petrenkov on 23/02/2021.
//

import UIKit

class TableViewController: UITableViewController {
    
    let someLabel: UILabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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

    
    // MARK: - Navigation
    
    
    /// Все возможные переходы по segue'ям из этого контроллера вызывают этот метод
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Достаём следующий контроллер из segue.
        // По умолчанию он общего типа UIViewController
        let nextViewController = segue.destination
        // Но нам нужно иметь доступ к конкретному классу будущего контроллера,
        // Чтобы мы могли обратиться к объявленным нами там свойствам и методам
        
        // MARK: - Кастим (приводим к нужному нам типу экрана)
        
        // Если это переход на контроллер SecondViewController
        if let secondViewController = nextViewController as? SecondViewController {
            // Уже доступен экземпляр следующего контроллера
            // Тут мы передаем какие-либо данные с текущего контроллера на следующий,
            // Например, присваиваем значение заголовку след экрана из лейбла текущего.
            secondViewController.title = someLabel.text
        }
        
        
        performSegue(withIdentifier: <#T##String#>, sender: <#T##Any?#>)
        
        
        
        
        // Если иной переход, то так же приводим к типу другого котроллера и настраиваем
        
    }
    
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        <#code#>
    }
    
    

}
