//
//  MainViewController.swift
//  DeepSclera
//
//  Created by Kevin Hojun Chon on 7/6/20.
//  Copyright © 2020 DeepSclera. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    private var imagePickerViewController: ImagePickerViewController
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        imagePickerViewController = ImagePickerViewController()
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // preselect scan tab
        selectedIndex = 0
        // Do any additional setup after loading the view.
    }
    
    // MARK: Setup
    
    private func setup() {
        viewControllers = [
            ScleraNavigationController(rootViewController: imagePickerViewController)
        ]
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
