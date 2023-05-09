//
//  ViewController.swift
//  FitnessApp
//
//  Created by Prajeeth Dilanka on 2023-05-09.
//

import UIKit

class UserDetails: UIViewController {
    
    
    let genderSegmentedControl: UISegmentedControl = {
        let control = UISegmentedControl(items: ["male", "♀"])
        control.selectedSegmentIndex = 0
        control.translatesAutoresizingMaskIntoConstraints = false
        return control
    }()
    
    let fitnessGoalSegmentedControl: UISegmentedControl = {
        let control = UISegmentedControl(items: ["💪 Muscle", "🏋️‍♂️ Weight loss"])
        control.selectedSegmentIndex = 0
        control.translatesAutoresizingMaskIntoConstraints = false
        return control
    }()
    
    let ageTextField: UITextField = {
        let field = UITextField()
        field.placeholder = "Age"
        field.keyboardType = .numberPad
        field.borderStyle = .roundedRect
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }()
    
    let heightTextField: UITextField = {
        let field = UITextField()
        field.placeholder = "Height (cm)"
        field.keyboardType = .numberPad
        field.borderStyle = .roundedRect
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }()
    
    let weightTextField: UITextField = {
        let field = UITextField()
        field.placeholder = "Weight (kg)"
        field.keyboardType = .decimalPad
        field.borderStyle = .roundedRect
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }()
    
    let calculateButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Calculate BMI", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 0.21, green: 0.55, blue: 0.97, alpha: 1.0)
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        // Add UI elements to view
        view.addSubview(genderSegmentedControl)
        view.addSubview(fitnessGoalSegmentedControl)
        view.addSubview(ageTextField)
        view.addSubview(heightTextField)
        view.addSubview(weightTextField)
        view.addSubview(calculateButton)
        
        // Setup layout constraints
        NSLayoutConstraint.activate([
            genderSegmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            genderSegmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            
            fitnessGoalSegmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            fitnessGoalSegmentedControl.topAnchor.constraint(equalTo: genderSegmentedControl.bottomAnchor, constant: 20),
            
            ageTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ageTextField.topAnchor.constraint(equalTo: fitnessGoalSegmentedControl.bottomAnchor, constant: 40),
            ageTextField.widthAnchor.constraint(equalToConstant: 200),
            
            heightTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            heightTextField.topAnchor.constraint(equalTo: ageTextField.bottomAnchor, constant: 20),
            heightTextField.widthAnchor.constraint(equalTo: ageTextField.widthAnchor),
            
            weightTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            weightTextField.topAnchor.constraint(equalTo: heightTextField.bottomAnchor, constant: 20),
            weightTextField.widthAnchor.constraint(equalTo: ageTextField.widthAnchor),
            
            calculateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            calculateButton.topAnchor.constraint(equalTo: weightTextField.bottomAnchor, constant: 40),
            calculateButton.widthAnchor.constraint(equalTo: ageTextField.widthAnchor),
            calculateButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
}
