//
//  ShoppingListViewController.swift
//  MealSwap
//
//  Created by HGPMAC78 on 7/29/19.
//  Copyright © 2019 HGPMAC78. All rights reserved.
//

import UIKit

class ShoppingListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var shoppingList: UITableView!
    @IBOutlet weak var addItemInput: UITextField!
    @IBAction func addItemButton(_ sender: Any) {
        if addItemInput.text != "" {
            listContent.append(addItemInput.text!)
            addItemInput.text = ""
            shoppingList.reloadData()
        }
    }
    
    var listContent = [""]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (listContent.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "shoppingListCell")
        cell.textLabel?.text = listContent[indexPath.row]
        
        return(cell)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            self.listContent.remove(at: indexPath.row)
            shoppingList.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
