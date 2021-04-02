//
//  Square.swift
//  iOS2-Vorgabe
//
//  Created by Kenneth Englisch on 28.10.20.
//  Copyright © 2020 Klaus Jung. All rights reserved.
//

import Foundation
import UIKit

class Square: Glyph {

    override var area: Double {
        return size * size
    }
    
    override var circumference: Double {
        return size * 4
    }
    
    override func paint() {
        DrawHelper.drawSquare(x: center.x, y: center.y, size: size, color: color)
        
        if(showDescription){
            DrawHelper.drawDescription(area: area, circumferrence: circumference, atX: center.x, y: center.y - size / 2 - 10)
        }
    }
}
