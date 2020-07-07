//
//  CameraViewController.swift
//  DeepSclera
//
//  Created by Kevin Hojun Chon on 7/6/20.
//  Copyright © 2020 DeepSclera. All rights reserved.
//

import UIKit

class ImagePickerViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    weak var imgV: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gesture = UITapGestureRecognizer(target: self, action: #selector(openCamera))
        self.view.addGestureRecognizer(gesture)
        // Do any additional setup after loading the view.
    }
    
    @objc func openCamera() {
       let imgPicker = UIImagePickerController()
       imgPicker.delegate = self
       imgPicker.sourceType = .camera
       imgPicker.allowsEditing = false
       imgPicker.showsCameraControls = true
       self.present(imgPicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController,
    didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey :
    Any]) {
       if let img = info[UIImagePickerController.InfoKey.editedImage] as?
       UIImage {
             self.imgV?.image = img
             self.dismiss(animated: true, completion: nil)
          }
          else {
             print("error")
          }
       }
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
