//
//  ViewController.swift
//  sendNavigation
//
//  Created by tosy on 13.11.22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dataLabel: UILabel!

    @IBAction func editDataWithProperty(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let editScreen = storyboard.instantiateViewController(withIdentifier:"SecondViewController") as! SecondViewController
        editScreen.updatingData = dataLabel.text ?? ""
        self.navigationController?.pushViewController(editScreen, animated: true)
        }
    var updatedData: String = "Test data"
    override func viewWillAppear(_ animated: Bool) { super.viewWillAppear(animated); updateLabel(withText: updatedData)
    }

    private func updateLabel(withText text: String) {
    dataLabel.text = updatedData }

        
        
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

