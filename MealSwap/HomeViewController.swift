//
//  HomeViewController.swift
//  MealSwap
//
//  Created by HGPMAC78 on 7/26/19.
//  Copyright © 2019 HGPMAC78. All rights reserved.
//

import UIKit
import FirebaseAuth
import UserNotifications

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    let users = ["Dustin", "Ashley", "Terry", "Lucas", "Karen", "Danielle"]
    let food = ["pasta", "lasagna", "eggos", "eggBurger", "vegan", "salad"]
    let foodDescription = ["Just made this delicious pasta", "Look at this 5 cheese work of art", "Nothing better in this world", "Carbs", "I'm vegan", "I like salad"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (users.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodFeedCell", for: indexPath) as! foodFeedCells
        cell.profileImage.image = UIImage(named: (users[indexPath.row] + ".jpg"))
        cell.userName.text = users[indexPath.row]
        cell.foodImage.image = UIImage(named: (food[indexPath.row] + ".jpg"))
        cell.foodImageDescription.text = foodDescription[indexPath.row]
        cell.profileImage.layer.cornerRadius = cell.profileImage.frame.size.width / 2
        if #available(iOS 11.0, *) {} else {
            tableView.estimatedRowHeight = 100
        }
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UNUserNotificationCenter.current(options: [.alert, .sound, .badge]), UNAuthorizationOptions, completionHndler: {(didAllow, error in
            
            //            if didAllow{
            //
            //            }
            )}


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
