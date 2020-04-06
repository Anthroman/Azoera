//
//  WelcomeViewController.swift
//  Azoera
//
//  Created by Anthroman on 4/5/20.
//  Copyright © 2020 trevorAdcock. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    
    //MARK: - IBOutlets
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmTextField: UITextField!
    @IBOutlet weak var loginToggleButton: UIButton!
    @IBOutlet weak var signupToggleButton: UIButton!
    @IBOutlet weak var helpButton: UIButton!
    @IBOutlet weak var faqButton: UIButton!
    @IBOutlet weak var signMeUpButton: UIButton!
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        
    }
    
    func setUpUI() {
        loginToggleButton.rotate()
        signupToggleButton.rotate()
        loginToggleButton.tintColor = UIColor.subtleTextColor
        signupToggleButton.tintColor = UIColor.mainTextColor
        faqButton.setTitleColor(.greenAccent, for: .normal)
        helpButton.setTitleColor(.mainTextColor, for: .normal)
        self.view.backgroundColor = .spaceGray
        
    }
    
    //MARK: - IBActions
    @IBAction func loginToggleButtonTapped(_ sender: UIButton) {
        toggleToLogin()
    }
    
    @IBAction func signupToggleButtonTapped(_ sender: UIButton) {
        toggleToSignup()
    }
    
    func toggleToLogin() {
        UIView.animate(withDuration: 0.2) {
            self.confirmTextField.isHidden = true
            self.loginToggleButton.tintColor = .mainTextColor
            self.signupToggleButton.tintColor = .subtleTextColor
            self.signMeUpButton.setTitle("Log me in", for: .normal)
            self.helpButton.setTitle("Forgot?", for: .normal)
            self.faqButton.setTitle("Remind", for: .normal)
        }
    }
    
    func toggleToSignup() {
        UIView.animate(withDuration: 0.2) {
            self.confirmTextField.isHidden = false
            self.loginToggleButton.tintColor = .subtleTextColor
            self.signupToggleButton.tintColor = .mainTextColor
            self.signMeUpButton.setTitle("Sign me up", for: .normal)
            self.helpButton.setTitle("Help?", for: .normal)
            self.faqButton.setTitle("FAQ", for: .normal)
        }
    }
}
