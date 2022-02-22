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
    case PNG
    case PDF
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
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        squareView.wantsLayer = true
        squareView.layer?.backgroundColor = ColorType.Red.color
        
        // Do any additional setup after loading the view.
    }


    /// Update the color of the background of squareView to the selected color
    func updateColor(_ color: ColorType) {
        squareView.layer?.backgroundColor = color.color
    }
    
    func updateAsset(_ asset: String) {
        
    }
    
    @IBAction func didChangeColor(_ sender: Any) {
        let selectedItem : Int = colorPullDownMenu.indexOfSelectedItem
        if let selectedColor = colorTypes[selectedItem].color {
            updateColor(selectedColor)
        }
    }
    
    @IBAction func popUpButtonUsed(_ sender: NSPopUpButton) {
        let selectedItem : Int = colorPullDownMenu.indexOfSelectedItem
        if let selectedColor = colorTypes[selectedItem].color {
            updateColor(selectedColor)
        }
        if let selectedAsset = colorTypes[selectedItem].assetName {
            updateAsset(selectedAsset)
        }
    }
    
    @IBAction func onUpdate(_ sender: Any) {
        print("onUpdate Button")
        let selectedItem : Int = colorPullDownMenu.indexOfSelectedItem
        if let selectedColor = colorTypes[selectedItem].color {
            updateColor(selectedColor)
        }
    }
    
}



