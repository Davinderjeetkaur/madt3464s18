//
//  RegisterVC.swift
//  Login
//
//  Created by MacStudent on 2018-08-04.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController {

    @IBOutlet weak var btndispalysubmit: UIButton!
    @IBOutlet weak var loginbtn: UIButton!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblemailid: UILabel!
    @IBOutlet weak var lbldisplayaddress: UILabel!
    @IBOutlet weak var lbldispalydate: UILabel!
    @IBOutlet weak var lbldisplaycontact: UILabel!
    @IBOutlet weak var txtname: UITextField!
    @IBOutlet weak var txtemail: UITextField!
    @IBOutlet weak var txtcontactno: UITextField!
    @IBOutlet weak var txtaddress: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func datepicker(_ sender: Any) {
    }
    @IBAction func seggender(_ sender: Any) {
        let sgmbtn = sender as! UISegmentedControl
        if sgmbtn.tag == 3 {
            switch sgmbtn.selectedSegmentIndex{
            case 1:
                print("First is selected")
            case 2:
                print("Second is selected")
            default:
                print("ddd")
            }
        }
        
        
    }
    @IBAction func btndispalysubmit(_ sender: Any) {
        let clickedButton = sender as! UIButton
        if clickedButton.tag == 1{
            btndispalysubmit.isHidden = false
           loginbtn.isHidden = true
        }else if clickedButton.tag == 2{
            btndispalysubmit.isHidden = true
            loginbtn.isHidden = false
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
