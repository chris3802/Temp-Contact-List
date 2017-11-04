//
//  ContactsViewController.swift
//  My Conact List
//
//  Created by Christopher Smith on 10/30/17.
//
//

import UIKit

class ContactsViewController: UIViewController {

    @IBOutlet weak var switchEditMode: UISwitch!
    
    @IBOutlet weak var txtFirstName: UITextField!
    
    @IBOutlet weak var txtLastName: UITextField!
    
    @IBOutlet weak var txtAddress: UITextField!
    
    @IBOutlet weak var txtCity: UITextField!
    
    @IBOutlet weak var txtState: UITextField!
    
    @IBOutlet weak var txtZip: UITextField!
    
    @IBOutlet weak var txtCell: UITextField!
    
    @IBOutlet weak var txtPhone: UITextField!
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var lblBirthdate: UILabel!
    @IBOutlet weak var scrollView:UIScrollView!

    @IBOutlet weak var btnChange: UIButton!
    
    
    
    @IBAction func changeEditMode(_ sender: Any) {
        let textFields: [UITextField] = [txtFirstName, txtLastName, txtAddress, txtCity, txtState, txtZip, txtPhone, txtCell, txtEmail]
        if switchEditMode.isOn {
            for textField in textFields {
                textField.isEnabled = true
                textField.borderStyle = UITextBorderStyle.roundedRect
            }
            btnChange.isHidden = false
        }
        else {
            for textField in textFields {
                textField.isEnabled = false
                textField.borderStyle = UITextBorderStyle.none
            }
            btnChange.isHidden = true
        }

    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.changeEditMode(self)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.registerKeyboardNotifications()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.unregisterKeyboardNotifications()
    }
    
    func registerKeyboardNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(ContactsViewController.keyboardDidShow(notification:)), name: NSNotification.Name.UIKeyboardDidShow, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(ContactsViewController.keyboardWillHide(notification:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    func unregisterKeyboardNotifications() {
        NotificationCenter.default.removeObserver(self)
    }
    
    func keyboardDidShow(notification: NSNotification) {
        let userInfo: NSDictionary = notification.userInfo! as NSDictionary
        let keyboardInfo = userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue
        let keyboardSize = keyboardInfo.cgRectValue.size
        
        var contentInset = self.scrollView.contentInset
        contentInset.bottom = keyboardSize.height
        
        self.scrollView.contentInset = contentInset
        self.scrollView.scrollIndicatorInsets = contentInset
    }
    
    func keyboardWillHide(notification: NSNotification) {
        var contentInset = self.scrollView.contentInset
        contentInset.bottom = 0
        
        self.scrollView.contentInset = contentInset
        self.scrollView.scrollIndicatorInsets = contentInset
    
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
