import UIKit

class BMICalculatorViewController: UIViewController {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "BMI Calculator"
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let heightLabel: UILabel = {
        let label = UILabel()
        label.text = "Height (cm)"
        label.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let heightTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter height"
        textField.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        textField.borderStyle = .roundedRect
        textField.keyboardType = .decimalPad
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let weightLabel: UILabel = {
        let label = UILabel()
        label.text = "Weight (kg)"
        label.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let weightTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter weight"
        textField.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        textField.borderStyle = .roundedRect
        textField.keyboardType = .decimalPad
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let calculateButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Calculate", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(calculateBMI), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // Add subviews
        view.addSubview(titleLabel)
        view.addSubview(heightLabel)
        view.addSubview(heightTextField)
        view.addSubview(weightLabel)
        view.addSubview(weightTextField)
        view.addSubview(calculateButton)
        
        // Add constraints
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            
            heightLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            heightLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 32),
            
            heightTextField.leadingAnchor.constraint(equalTo: heightLabel.trailingAnchor, constant: 16),
            heightTextField.centerYAnchor.constraint(equalTo: heightLabel.centerYAnchor),
            heightTextField.widthAnchor.constraint(equalToConstant: 100),
            
            weightLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            weightLabel.topAnchor.constraint(equalTo: heightLabel.bottomAnchor, constant: 16),
            
            weightTextField.leadingAnchor.constraint(equalTo: weightLabel.trailingAnchor, constant: 16),
            weightTextField.centerYAnchor.constraint(equalTo: weightLabel.centerYAnchor),
            weightTextField.widthAnchor.constraint(equalToConstant: 100),
            
            calculateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            calculateButton.topAnchor.constraint(equalTo: weightLabel.bottomAnchor, constant: 32),
            calculateButton.widthAnchor.constraint(equalToConstant: 150),
            calculateButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func calculateBMI() {
        guard let heightText = heightTextField.text, let height = Double(heightText) else {
            return
        }
        
        guard let weightText = weightTextField.text, let weight = Double(weightText) else {
            return
        }
        
        let bmi = weight / (height * height)
        bmiLabel.text = "BMI: \(bmi)"
    }
        
    // Add this code to the viewDidLoad() or viewDidAppear() method
    let bmiLabel = UILabel()
    bmiLabel.translatesAutoresizingMaskIntoConstraints = false
    bmiLabel.textAlignment = .center
    bmiLabel.font = UIFont.systemFont(ofSize: 24)
    view.addSubview(bmiLabel)

    NSLayoutConstraint.activate([
        bmiLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        bmiLabel.topAnchor.constraint(equalTo: calculateButton.bottomAnchor, constant: 16)
    ])


}
