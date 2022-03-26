//
//  myBabyRegisterViewController.swift
//  AprolamApp
//
//  Created by Saúl García on 24/03/22.
//

import UIKit

class MyBabyRegisterViewController: UIViewController {
    
    @IBOutlet weak var bornTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBAction func sharePhotoButton() {
    }
    
    @IBAction func saveButton() {
        
    }
    @IBAction func cleanButton() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        nameTextField.layer.cornerRadius = 25
        bornTextField.layer.cornerRadius = 25
        
    }
    
    private func insertName() {
        guard let name = nameTextField.text, !name.isEmpty else{
            return
        }
        
        guard let birthday = bornTextField.text, !birthday.isEmpty else{
            return
            
        }
        
    }
}
