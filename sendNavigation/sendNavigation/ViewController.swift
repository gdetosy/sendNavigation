//
//  ViewController.swift
//  sendNavigation
//
//  Created by tosy on 13.11.22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var dataLabel: UILabel!
    @IBAction func closerSendBtn(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let editScreen = storyboard.instantiateViewController(withIdentifier:
            "SecondViewController") as! SecondViewController

        editScreen.updatingData = dataLabel.text ?? ""

        editScreen.closer = { [unowned self] updatedValue in
            updatedData = updatedValue
            updateLabel(withText: updatedValue)
        }

        self.navigationController?.pushViewController(editScreen, animated: true)
    }
    
    @IBAction private func editDataWithProperty(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let editScreen = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        editScreen.updatingData = dataLabel.text ?? " "
        self.navigationController?.pushViewController(editScreen, animated: true)
    }
    
    var updatedData: String = "start"
    override func viewWillAppear(_ animated: Bool) { super.viewWillAppear(animated); updateLabel(withText: updatedData)
    }
    
    private func updateLabel(withText text: String) {
        dataLabel.text = updatedData
    }
    
    @IBOutlet var textField: UITextField!
    
    //    MARK: seugue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "toEditScreen": prepareEditScreen(segue)
        default: break
        }
    }

    private func prepareEditScreen(_ segue: UIStoryboardSegue) {
        guard let destinationController = segue.destination as? SecondViewController else {
            return
        }
        destinationController.updatingData = textField.text ?? " "
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: XIB

    @IBAction private func xibButtonSend(_ sender: Any) {
        let navi = XibViewController(nibName: "XibViewController", bundle: nil)
        navi.dataString = textField.text

        navigationController?.pushViewController(navi, animated: true)
    }

    // MARK: unwind

    @IBAction private func unwindToFirstScreen(_ segue: UIStoryboardSegue) {}
}
    
