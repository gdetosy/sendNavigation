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
    var closer: ((String) -> Void)?

    override func viewWillAppear(_ animated: Bool) { super.viewWillAppear(animated)
        updateTextFieldData(withText: updatingData)
    }

    private func updateTextFieldData(withText text: String) {
        dataTextField.text = text
    }

    @IBAction func saveWithCloserBtn(_ sender: UIButton) {
        let updatedData = dataTextField.text ?? ""
        closer?(updatedData)
        navigationController?.popViewController(animated: true)
    }

    @IBAction private func saveDataWithProperty(_ sender: UIButton) {
        self.navigationController?.viewControllers.forEach { viewController in
            (viewController as? ViewController)?.updatedData = dataTextField.text ?? ""
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        func viewWillAppear(_ animated: Bool) { super.viewWillAppear(animated); updateTextFieldData(withText: updatingData)
        }
    }
}
