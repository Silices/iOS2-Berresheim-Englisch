//
//  Glyph.swift
//  iOS2-Vorgabe
//
//  Created by Kenneth Englisch on 28.10.20.
//  Copyright © 2020 Klaus Jung. All rights reserved.
//

import Foundation
import UIKit

class Glyph: Drawing
{
    init(){}
    
    init(size: Double, color: UIColor, center: Point, showDescription: Bool) {
        self.size = size
        self.color = color
        self.center = center
        self.showDescription = showDescription
    }
    
    var size: Double = 0.0
    
    var color: UIColor = UIColor.green
    
    var center: Point = Point(x: 50, y: 50)
    
    var showDescription: Bool = false
    
    func paint() {
        
    }
    
    var area: Double {
        return 0
    }
    
    var circumference: Double {
        return 0
    }
}
