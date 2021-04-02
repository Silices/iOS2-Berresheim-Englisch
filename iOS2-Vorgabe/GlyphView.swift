//
//  GlyphView.swift
//  iOS2-Vorgabe
//
//  Created by Klaus Jung on 10.10.14.
//  Copyright (c) 2014 Klaus Jung. All rights reserved.
//

import UIKit

enum GlyphType: Int {
    case square = 0, circle, triangle
}

class GlyphView: UIView {
//    let square = Square(size: 35, color: UIColor.green, center: Point(x: 50, y: 50), showDescription: true)
//    let triangle = Triangle(size: 50, color: UIColor.red, center: Point(x: 150, y: 150), showDescription: true)
//    let circle = Circle(size: 40, color: UIColor.purple, center: Point(x: 150, y: 50), showDescription: true)
    
    var list = [Square(), Triangle(), Circle()]
    
    // MARK: - Change Handlers
    
    func glyph(index: Int, changedPositionX x: Double, positionY y: Double) {
        let glyph = list[index]
        
        glyph.center.x = x
        glyph.center.y = y
    }
    
    func glyph(index: Int, changedType type: GlyphType) {
        // hint: use a switch statement to deal with different values of type
        // hint: type a single "." after "case " and use the editor's text completion
        let glyph = list[index]
        
        let size = glyph.size
        let color = glyph.color
        let center = glyph.center
        
        switch type {
            case .square:
                list[index] = Square()
                break
            case .triangle:
                list[index] = Triangle()
                break
            case .circle:
                list[index] = Circle()
                break
            default:
                print("Ähm Diggah, was machst du hier?")
        }
        list[index].size = size
        list[index].color = color
        list[index].center = center
    }
    
    func glyph(index: Int, changedColor color: UIColor) {
        let glyph = list[index]
        
        glyph.color = color
    }
    
    func glyph(index: Int, changedSize size: Double) {
        let glyph = list[index]
        
        glyph.size = size
    }
    
    func glyph(index: Int, showDescription show: Bool) {
        let glyph = list[index]
        
        glyph.showDescription = show
    }
    

    // MARK: - Drawing
    
    override func draw(_ rect: CGRect)
    {
        for glyph in list{
            glyph.paint()
        }
    }

}
