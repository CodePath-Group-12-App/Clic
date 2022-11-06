//
//  ViewController.swift
//  ClicApp
//
//  Created by Jesse Oseafiana on 10/28/22.
//

import UIKit
import GoogleSignIn
import GoogleSignInSwift

class ViewController: UIViewController {
    
    var googleSignIn = GIDSignIn.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

    }
        

    @IBAction func GoogleSignInButton(_ sender: UIButton) {
        self.googleAuthLogin()

    }
    
    func googleAuthLogin() {
        let googleConfig = GIDConfiguration(clientID: "597761135101-20b3ssrtsm6qa1qb9e558p2h71eq930g.apps.googleusercontent.com")
        self.googleSignIn.signIn(with: googleConfig, presenting: self) { user, error in
            if error == nil {
                guard let user = user else {
                    print("Uh oh. The user cancelled the Google login.")
                    return
                }
            }
        }
    }
    
    
    
//    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
//        if error == nil {
//            print(user.userID)
//        }
//    }
    
}

//func handleSignInButton() {
//    self.googleSignIn.signIn(with: googleConfig, presenting: presentingViewController) { user, error in
//            guard let signInUser = user else {
//                print("Uh oh. The user cancelled the Google login.")
//                return
//            }
//            // If sign in succeeded, display the app's main content View.
//        }
//    }


