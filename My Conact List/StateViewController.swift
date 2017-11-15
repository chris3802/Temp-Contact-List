//
//  StateViewController.swift
//  My Conact List
//
//  Created by Christopher Smith on 11/15/17.
//  Copyright © 2017 Christopher Smith. All rights reserved.
//

import UIKit

protocol StateControllerDelegate: class {
    func stateChanged(state: String)
}


class StateViewController: UIViewController {
    @IBOutlet weak var pvState: UIPickerView!

 
    
    
    weak var delegate: StateControllerDelegate?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let saveButton: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.save, target: self, action: #selector(saveState))
        self.navigationItem.rightBarButtonItem = saveButton
        self.title = "Pick Default State"
    }
    func saveState() {
        //self.delegate?.dateChanged(date: pvState.)
        self.navigationController?.popViewController(animated: true)
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
