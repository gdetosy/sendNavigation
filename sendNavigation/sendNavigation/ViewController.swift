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
        let editScreen = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        editScreen.updatingData = dataLabel.text ?? " "
        self.navigationController?.pushViewController(editScreen, animated: true)
    }
    
    var updatedData: String = "ddddd"
    override func viewWillAppear(_ animated: Bool) { super.viewWillAppear(animated); updateLabel(withText: updatedData)
    }
    
    private func updateLabel(withText text: String) {
        dataLabel.text = updatedData
    }
   
    
   
    
    
    
    
    
//    MARK: seugue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "toEditScreen": prepareEditScreen(segue)
        default: break
        }
    }
        func prepareEditScreen(_ segue: UIStoryboardSegue) {
            guard let destinationController = segue.destination as? SecondViewController else {
                return
            }
            destinationController.updatingData = dataLabel.text ?? " "
        }
            override func viewDidLoad() {
                super.viewDidLoad()
                // Do any additional setup after loading the view.
            }
        }
    

