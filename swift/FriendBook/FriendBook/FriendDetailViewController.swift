//
//  FriendDetailViewController.swift
//  FriendBook
//
//  Created by Selvin Ortiz on 11/30/15.
//  Copyright © 2015 Selvin Ortiz. All rights reserved.
//

import UIKit

class FriendDetailViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!

    var friend = Friend()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameLabel.text = self.friend.name
        self.birthdayLabel.text = self.friend.birthday
        self.phoneLabel.text = self.friend.phone
        // @todo Get some images in and set a named UIImage() for each friend
        // self.photoImageView.image = self.friend.photo
        self.photoImageView.contentMode = UIViewContentMode.scaleAspectFit
    }
}
