//
//  ViewController.swift
//  GabrielZavala
//
//  Created by Gabriel Zavala on 2/1/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var morepetsSwitcher: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var schoolName: UITextField!
    
    @IBOutlet weak var yearSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        
        // Let's us chose the title we have selected from the segmented control
               let year = yearSegmentControl.titleForSegment(at: yearSegmentControl.selectedSegmentIndex)
               
               // Creating a variable of type string, that holds an introduction. The introduction interpolates the values from the text fields provided.
               // Currently we can only present the information in a print statement. However, this lets us verify that our app is printing out what is intended!
        let introduction = "My name is \(firstName.text!) \(lastName.text!) and I attend \(schoolName.text!).I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs.It is \(morepetsSwitcher.isOn) that I want more pets."
               
               
               // Creates the alert where we pass in our message, which our introduction.
               let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
               
               // A way to dismiss the box once it pops up
               let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
               
               // Passing this action to the alert controller so it can be dismissed
               alertController.addAction(action)
               
               present(alertController, animated: true, completion: nil)
    }
}



