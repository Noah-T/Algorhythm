//
//  Playlist.swift
//  Algorhythm
//
//  Created by Noah Teshu on 4/18/15.
//  Copyright (c) 2015 Noah Teshu. All rights reserved.
//

import Foundation
import UIKit

struct Playlist {
    
    var title: String?
    var description: String?
    var icon: UIImage?
    var largeIcon: UIImage?
    //array of type string
    var artists: [String] = []
    var backgroundColor: UIColor = UIColor.clearColor()
    
    init(index: Int){
        //reference the music library struct
        let musicLibrary = MusicLibrary().library
        //get the playlist of the index we passed in
        let playlistDictionary = musicLibrary[index]
        
        title = playlistDictionary["title"] as! String!
        description = playlistDictionary["description"] as! String!
        
        let iconName = playlistDictionary["icon"] as! String!
        icon = UIImage(named: iconName)
        
        let largeIconName = playlistDictionary["largeIcon"] as! String!
        largeIcon = UIImage(named: largeIconName)
        
        artists += playlistDictionary["artists"] as! [String]
        
        let colorsDictionary = playlistDictionary["backgroundColor"] as! [String: CGFloat]
        backgroundColor = rgbColorFromDictionary(colorsDictionary)
        
        
    }
    
    func rgbColorFromDictionary(colorDictionary: [String: CGFloat]) -> UIColor{
        
        let red = colorDictionary["red"]
        let green = colorDictionary["green"]
        let blue = colorDictionary["blue"]
        let alpha = colorDictionary["alpha"]
        
        return UIColor(red: red!/255.0, green: green!/255.0, blue: blue!/255.0, alpha: alpha!)
    }
    
}