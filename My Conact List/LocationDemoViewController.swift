//
//  LocationDemoViewController.swift
//  My Conact List
//
//  Created by Christopher Smith on 11/9/17.
//  Copyright © 2017 Christopher Smith. All rights reserved.
//

import UIKit

class LocationDemoViewController: UIViewController {

    @IBOutlet weak var txtStreet: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var txtState: UITextField!
    
    
    @IBAction func addressToCoordinates(_ sender: Any) {
        //let address
    }
    
    @IBAction func deviceCoordinates(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
