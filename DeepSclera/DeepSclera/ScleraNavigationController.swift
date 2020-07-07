//
//  ScleraNavigationController.swift
//  DeepSclera
//
//  Created by Kevin Hojun Chon on 7/6/20.
//  Copyright © 2020 DeepSclera. All rights reserved.
//

import UIKit

class ScleraNavigationController: UINavigationController {
    
    override init(rootViewController: UIViewController) {
           super.init(rootViewController: rootViewController)
           commonNavigationBarSetup()
       }

       override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
           super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
           commonNavigationBarSetup()
       }

       required init?(coder aDecoder: NSCoder) {
           super.init(coder: aDecoder)
           commonNavigationBarSetup()
       }

       private func commonNavigationBarSetup() {
           navigationBar.barTintColor = ScleraColor.colorLightSecondary()
           navigationBar.tintColor = UIColor.white
           navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
       }

}
