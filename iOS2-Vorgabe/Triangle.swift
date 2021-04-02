//
//  Triangle.swift
//  iOS2-Vorgabe
//
//  Created by Kenneth Englisch on 28.10.20.
//  Copyright © 2020 Klaus Jung. All rights reserved.
//

import Foundation
import UIKit

class Triangle: Glyph {
    
    override var area: Double {
        return 0.5 * size * size
    }
    
    override var circumference: Double {
        let temp = sqrt(pow(size, 2) + pow(0.5 * size, 2))
        return temp * 2 + size
    }
    
    override func paint() {
        DrawHelper.drawTriangle(x: center.x, y: center.y, size: size, color: color)
        
        if(showDescription){
            DrawHelper.drawDescription(area: area, circumferrence: circumference, atX: center.x, y: center.y - size / 2 - 10)
        }
    }
}
