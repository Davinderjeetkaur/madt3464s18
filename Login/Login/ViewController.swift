//
//  ViewController.swift
//  Login
//
//  Created by MacStudent on 2018-08-04.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnsubmit: UIButton!
    @IBOutlet weak var btnregister: UIButton!
    @IBOutlet weak var password: UILabel!
    @IBOutlet weak var lblusername: UILabel!
    @IBOutlet weak var login: UILabel!
    @IBOutlet weak var txtpassword: UITextField!
    @IBOutlet weak var txtusername: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
        
    }
    @IBAction func btnsubmit(_ sender: Any) {
//        let clickedButton = sender as! UIButton
//        if clickedButton.tag == 1{
//            btnregister.isHidden = false
//            btnsubmit.isHidden = true
//        }else if clickedButton.tag == 2{
//            btnregister.isHidden = true
//            btnsubmit.isHidden = false
//        }
     
    }
    
    @IBAction func btnregister(_ sender: Any) {
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

