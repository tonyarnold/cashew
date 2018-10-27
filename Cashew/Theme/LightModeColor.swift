//
//  LightModeColor.swift
//  Cashew
//
//  Created by Hicham Bouabdallah on 7/7/16.
//  Copyright © 2016 SimpleRocket LLC. All rights reserved.
//

import Cocoa

//Tomorrow
//
//#ffffff Background
//#efefef Current Line
//#d6d6d6 Selection
//#4d4d4c Foreground
//#8e908c Comment
//#c82829 Red
//#f5871f Orange
//#eab700 Yellow
//#718c00 Green
//#3e999f Aqua
//#4271ae Blue
//#8959a8 Purple

@objc(SRLightModeColor)
class LightModeColor: NSObject, ThemeColor {
    
    fileprivate static let bgColor = NSColor.white // NSColor(fromHexadecimalValue: "#fdf6e3") // NSColor.whiteColor()
    fileprivate static let currentLineBgColor = NSColor(calibratedWhite: 220/255.0, alpha: 1.0)
    fileprivate static let fgColor = NSColor(calibratedWhite: 0, alpha: 0.90) //NSColor(calibratedRed: 77/255.0, green: 77/255.0, blue: 76/255.0, alpha: 1.0)
    fileprivate static let fgSecondaryColor = NSColor(calibratedRed: 120/255.0, green: 120/255.0, blue: 120/255.0, alpha: 1.0)
    fileprivate static let fgTertiaryColor = NSColor(calibratedWhite: 100/255.0, alpha: 1.0)
    fileprivate static let separatorLineColor = NSColor(calibratedWhite: 220/255.0, alpha: 1.0) //NSColor(calibratedWhite: 0/255.0, alpha: 0.05)
    fileprivate static let aYellowColor = NSColor(calibratedRed: 234/255.0, green: 183/255.0, blue: 0, alpha: 1)
    fileprivate static let sidebarBgColor = NSColor(calibratedWhite: 245/255.0, alpha: 1.0)
    
    static let sharedInstance = LightModeColor()
    
    func backgroundColor() -> NSColor {
        return LightModeColor.bgColor
    }
    
    func currentLineBackgroundColor() -> NSColor {
        return LightModeColor.currentLineBgColor
    }
    
    func foregroundColor() -> NSColor {
        return LightModeColor.fgColor
    }
    
    func foregroundSecondaryColor() -> NSColor {
        return LightModeColor.fgSecondaryColor
    }
    
    func foregroundTertiaryColor() -> NSColor {
        return LightModeColor.fgTertiaryColor
    }
    
    func separatorColor() -> NSColor {
        return LightModeColor.separatorLineColor
    }

    func yellowColor() -> NSColor {
        return LightModeColor.aYellowColor
    }
    
    func sidebarBackgroundColor() -> NSColor {
        return LightModeColor.sidebarBgColor
    }
}
