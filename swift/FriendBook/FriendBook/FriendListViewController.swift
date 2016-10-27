//
//  ViewController.swift
//  FriendBook
//
//  Created by Selvin Ortiz on 11/30/15.
//  Copyright © 2015 Selvin Ortiz. All rights reserved.
//

import UIKit

class FriendListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var friendsTableView: UITableView!

    var friends = [Friend]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.friendsTableView.dataSource = self
        self.friendsTableView.delegate   = self
        
        self.createFriends()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailViewController = segue.destination as! FriendDetailViewController
        detailViewController.friend = sender as! Friend
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.friends.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let friend = self.friends[(indexPath as NSIndexPath).row]
        cell.textLabel!.text = friend.name
        
        return cell;
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let friend = self.friends[(indexPath as NSIndexPath).row]
        self.performSegue(withIdentifier: "detailSegue", sender: friend)
    }
    
    func createFriends() {
        let penny = Friend()
        penny.name = "Penny Lynne"
        penny.phone = "612-555-1234"
        penny.birthday = "Feb 15, 1978"
        
        self.friends.append(penny)
        
        let grayson = Friend()
        grayson.name = "Grayson Thomas"
        grayson.phone = "612-555-1234"
        grayson.birthday = "Jun 27, 2003"
        
        self.friends.append(grayson)
        
        
        let silas = Friend()
        silas.name = "Silas Gabriel"
        silas.phone = "612-555-1234"
        silas.birthday = "Jan 4, 2016"
        
        self.friends.append(silas)
    }
}

