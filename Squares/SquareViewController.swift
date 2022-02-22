//
//  ViewController.swift
//  Squares
//
//  Created by Scott Richards on 2/22/22.
//

import Cocoa
import AppKit

enum MenuType {
    case Color
    case Asset

}

struct MenuItem {
    let title: String
    let type: MenuType
    let color: ColorType?
    let assetName: String?
}


class SquareViewController: NSViewController {
    @IBOutlet weak var squareView: NSView!
    @IBOutlet weak var colorPullDownMenu: NSPopUpButton!
    @IBOutlet weak var imageView: NSImageView!
    
    let colorTypes: [MenuItem] =
    [ MenuItem(title: ColorType.Red.rawValue, type: .Color, color: .Red, assetName: nil),
      MenuItem(title: ColorType.Green.rawValue, type: .Color, color: .Green, assetName: nil),
      MenuItem(title: ColorType.Blue.rawValue, type: .Color, color: .Blue, assetName: nil),
      MenuItem(title: ColorType.Cyan.rawValue, type: .Color, color: .Cyan, assetName: nil),
      MenuItem(title: ColorType.Magenta.rawValue, type: .Color, color: .Magenta, assetName: nil),
      MenuItem(title: ColorType.Yellow.rawValue, type: .Color, color: .Yellow, assetName: nil),
      MenuItem(title: ColorType.Gray.rawValue, type: .Color, color: .Gray, assetName: nil),
      MenuItem(title: ColorType.White.rawValue, type: .Color, color: .White, assetName: nil),
      MenuItem(title: ColorType.Black.rawValue, type: .Color, color: .Black, assetName: nil),
      MenuItem(title: "Gray Scale PNG", type: .Asset, color: nil, assetName: "Gray Scale PNG"),
      MenuItem(title: "Color Pattern PNG", type: .Asset, color: nil, assetName: "Color Pattern PNG"),
      MenuItem(title: "Gray Scale PDF", type: .Asset, color: nil, assetName: "Gray Scale PDF"),
      MenuItem(title: "Color Pattern PDF", type: .Asset, color: nil, assetName: "Color Pattern PDF")
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        squareView.wantsLayer = true
        squareView.layer?.backgroundColor = ColorType.Red.color
        imageView.isHidden = true
    }


    /// Update the color of the background of squareView to the selected color
    func updateColor(_ color: ColorType) {
        imageView.isHidden = true
        squareView.layer?.backgroundColor = color.color
    }
    
    func updateAsset(_ asset: String) {
        imageView.isHidden = false
        imageView.image = NSImage(named: asset)
        squareView.layer?.backgroundColor = nil
    }
    
    // MARK: Actions
    
    @IBAction func popUpButtonUsed(_ sender: NSPopUpButton) {
        let selectedItem : Int = colorPullDownMenu.indexOfSelectedItem
        if let selectedColor = colorTypes[selectedItem].color {
            updateColor(selectedColor)
        }
        if let selectedAsset = colorTypes[selectedItem].assetName {
            updateAsset(selectedAsset)
        }
    }
    
}



