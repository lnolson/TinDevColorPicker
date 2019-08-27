# TinDevColorPicker
A small color picker utility for ASU students using the Tin Framework.

A very small utility app that makes it easier to pick a color, then add the correct code to your app. A few options make it easy to use with the Tin Framework. 

### Installation

If you just want the binary, you can download the application from the latest release [here](https://github.com/lnolson/TinDevColorPicker/releases/download/v1.2/TinDevColorPicker.app.zip). Unzip this archive, and put it wherever you want. /Applications will work just fine.


### How to use

- Launch TinDevColorPicker
- Click on the color swatch to open the standard macOS color picker.
- Choose a color.
- Click one of the 5 buttons in the main window to get the necessary code copied to your system pasteboard.
- Return to your Xcode project. Select the location where you want to insert this code.
- Edit->Paste

The 5 buttons provide the following actions.

#### Create a tin method call to set Fill color, put it on the pasteboard.

    fillColor(red: 1.0, green: 0.6817, blue: 0.176, alpha: 1.0)

#### Create a tin method call to set Stroke color, put it on the pasteboard.

    strokeColor(red: 1.0, green: 0.6817, blue: 0.176, alpha: 1.0)

#### Create a tin method call to set the background color, put it on the pasteboard.

    background(red: 1.0, green: 0.6817, blue: 0.176)

#### Create a method call to create an NSColor instance, put it on the pasteboard.

    NSColor(red: 1.0, green: 0.6817, blue: 0.176, alpha: 1.0)

#### Create a method call to create an UIColor instance, put it on the pasteboard.

    UIColor(red: 1.0, green: 0.6817, blue: 0.176, alpha: 1.0)

