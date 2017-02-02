//
//  ViewController.swift
//  TinDevColorPicker
//
//  Created by Loren Olson on 1/27/17.
//  Copyright © 2017 ASU. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    
    @IBOutlet weak var colorWell: NSColorWell!
    var formatter = NumberFormatter()
    
    
    
    override func viewDidAppear() {
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 1
        formatter.maximumFractionDigits = 4
        
        
    }
    
    
    // Provide a short function call to nicely format a number, so its not a very, very long Double value.
    func nice(number: CGFloat) -> String {
        return formatter.string(from: NSNumber(value: Double(number))) ?? "0.0"
    }
    

    // Useful for debugging purposes only.
    @IBAction func colorUpdate(_ sender: NSColorWell) {
        //print("RGB Color: \(sender.color.redComponent), \(sender.color.greenComponent), \(sender.color.blueComponent)")
    }
    

    // Create a tin method call to set Fill color, put it on the pasteboard.
    @IBAction func createFill(_ sender: NSButton) {
        
        let text = "tin.setFillColor(red: \(nice(number: colorWell.color.redComponent)), green: \(nice(number: colorWell.color.greenComponent)), blue: \(nice(number: colorWell.color.blueComponent)), alpha: \(nice(number: colorWell.color.alphaComponent)))"
        print(text)
        
        NSPasteboard.general().clearContents()
        NSPasteboard.general().setString(text, forType: NSPasteboardTypeString)
        
    }
    
    
    // Create a tin method call to set Stroke color, put it on the pasteboard.
    @IBAction func createStroke(_ sender: NSButton) {
        let text = "tin.setStrokeColor(red: \(nice(number: colorWell.color.redComponent)), green: \(nice(number: colorWell.color.greenComponent)), blue: \(nice(number: colorWell.color.blueComponent)), alpha: \(nice(number: colorWell.color.alphaComponent)))"
        print(text)
        
        NSPasteboard.general().clearContents()
        NSPasteboard.general().setString(text, forType: NSPasteboardTypeString)
    }
    
    
    // Create a tin method call to set the background color, put it on the pasteboard.
    @IBAction func createBackground(_ sender: NSButton) {
        let text = "tin.background(red: \(nice(number: colorWell.color.redComponent)), green: \(nice(number: colorWell.color.greenComponent)), blue: \(nice(number: colorWell.color.blueComponent)))"
        print(text)
        
        NSPasteboard.general().clearContents()
        NSPasteboard.general().setString(text, forType: NSPasteboardTypeString)
    }
    
    
    // Create a method call to create an NSColor instance, put it on the pasteboard.
    @IBAction func createNsColor(_ sender: NSButton) {
        let text = "NSColor(red: \(nice(number: colorWell.color.redComponent)), green: \(nice(number: colorWell.color.greenComponent)), blue: \(nice(number: colorWell.color.blueComponent)), alpha: \(nice(number: colorWell.color.alphaComponent)))"
        print(text)
        
        NSPasteboard.general().clearContents()
        NSPasteboard.general().setString(text, forType: NSPasteboardTypeString)
    }
    
    
    // Create a method call to create an UIColor instance, put it on the pasteboard.
    @IBAction func createUiColor(_ sender: NSButton) {
        let text = "UIColor(red: \(nice(number: colorWell.color.redComponent)), green: \(nice(number: colorWell.color.greenComponent)), blue: \(nice(number: colorWell.color.blueComponent)), alpha: \(nice(number: colorWell.color.alphaComponent)))"
        print(text)
        
        NSPasteboard.general().clearContents()
        NSPasteboard.general().setString(text, forType: NSPasteboardTypeString)
    }
    
    
    
}

