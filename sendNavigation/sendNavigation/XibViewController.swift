//
//  XibViewController.swift
//  sendNavigation
//
//  Created by tosy on 14.11.22.
//

import UIKit

class XibViewController: UIViewController {

    var dataString: String?
    
    @IBOutlet weak var labelXib: UILabel!
    
    
    @IBAction func buttonBackXib(_ sender: UIButton) {
    navigationController?.popToRootViewController(animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelXib.text = dataString
       
    }


  
}
