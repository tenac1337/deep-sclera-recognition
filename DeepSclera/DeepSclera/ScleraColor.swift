//
//  ScleraColor.swift
//  DeepSclera
//
//  Created by Kevin Hojun Chon on 7/6/20.
//  Copyright © 2020 DeepSclera. All rights reserved.
//

import UIKit

class ScleraColor {
    class func colorLightSecondary() -> UIColor {
        return rgbColor(red: 0, green: 99, blue: 162)
    }
    
    private class func rgbColor(red: Int, green: Int, blue: Int) -> UIColor {
        return UIColor(red: normalize(component: red), green: normalize(component: green), blue: normalize(component: blue), alpha: 1.0)
    }

    private class func normalize(component: Int) -> CGFloat {
        return CGFloat(component) / 255.0
    }
}
