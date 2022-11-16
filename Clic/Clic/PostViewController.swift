//
//  PostViewController.swift
//  Clic
//
//  Created by Aashi on 11/15/22.
//

import UIKit
import Parse

class PostViewController: UIViewController {

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onCancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    //Parse Information
    //FIX THIS
    @IBAction func onSubmitButton(_ sender: Any) {
        let post = PFObject(className: "Question")
        
        post["Activity Name"] = activityNameField.text
        post["Activity Details"] = activityDetailsField.text
        post["author"] = PFUser.current()!
        
        
        let imageData = activityImageView.image!.pngData()
        let file = PFFileObject(name: "image.png", data: imageData!)
        
        post["image"] = file
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
