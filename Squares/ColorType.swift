//
//  ColorType.swift
//  Squares
//
//  Created by Scott Richards on 2/22/22.
//

import Foundation

enum ColorType: String, Codable {
    // RGB - Chroma
    case Red
    case Green
    case Blue
    
    // CMY
    case Cyan
    case Magenta
    case Yellow
    
    // Black and White - Whitepoint
    case White
    case Black
    case Gray

    
    var color: CGColor {
        switch self {
        case .Red: return CGColor.initialize(red: 255, green: 0, blue: 0)
        case .Green: return CGColor.initialize(red: 0, green: 255, blue: 0)
        case .Blue: return CGColor.initialize(red: 0, green: 0, blue: 255)

        case .Cyan: return CGColor.initialize(red: 0, green: 255, blue: 255)
        case .Magenta: return CGColor.initialize(red: 255, green: 0, blue: 255)
        case .Yellow: return CGColor.initialize(red: 255, green: 255, blue: 0)
            
        case .White: return CGColor.initialize(red: 255, green: 255, blue: 255)
        case .Black: return CGColor.initialize(red: 0, green: 0, blue: 0)
            
        case .Gray: return CGColor.initGray(hex: "80")
        }
    }
}
