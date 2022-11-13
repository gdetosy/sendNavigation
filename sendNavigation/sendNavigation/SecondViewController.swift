//
//  SecondViewController.swift
//  sendNavigation
//
//  Created by tosy on 13.11.22.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet var dataTextField: UITextField!
    var updatingData: String = ""
    override func viewWillAppear(_ animated: Bool) { super.viewWillAppear(animated)
        updateTextFieldData(withText: updatingData)
    }

    private func updateTextFieldData(withText text: String) {
        dataTextField.text = text
    }
    
    @IBAction func saveDataWithProperty(_ sender: UIButton) {
        self.navigationController?.viewControllers.forEach { viewController in
            (viewController as? ViewController)?.updatedData = dataTextField.text ?? ""
        }
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let editScreen = storyboard.instantiateViewController(withIdentifier:
//        "ViewController") as! ViewController
//
//        navigationController?.pushViewController(editScreen, animated: true)
//
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        func viewWillAppear(_ animated: Bool) { super.viewWillAppear(animated); updateTextFieldData(withText: updatingData)
        }
        // обновляем данные в текстовом поле
       func updateTextFieldData(withText text: String) {
        dataTextField.text = text }
        
     
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
