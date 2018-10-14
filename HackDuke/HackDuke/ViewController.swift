//
//  ViewController.swift
//  HackDuke
//
//  Created by David Cheng on 10/13/18.
//  Copyright © 2018 CDEV. All rights reserved.
//

import UIKit
import Alamofire

import Firebase
import FirebaseCore
import FirebaseDatabase


class ViewController: UIViewController {
    
    var ref: DatabaseReference!

    @IBOutlet weak var phoneNumber: UITextField!

    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var logButton: UIButton!
    
    @IBAction func logIn(_ sender: Any) {
        let myPhoneNumber = phoneNumber.text
        let myPassword = password.text
        
        self.ref.child("Deliverers").setValue(["phoneNum": myPhoneNumber, "password": myPassword])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        ref = Database.database().reference()
       
    }

}

