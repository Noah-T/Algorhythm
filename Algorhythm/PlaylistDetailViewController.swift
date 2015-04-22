//
//  PlaylistDetailViewController.swift
//  Algorhythm
//
//  Created by Noah Teshu on 4/16/15.
//  Copyright (c) 2015 Noah Teshu. All rights reserved.
//

import UIKit

class PlaylistDetailViewController: UIViewController {
    @IBOutlet weak var buttonPressLabel: UILabel!
    //question mark is an optional. Can have value of nil until actual value is created
    var playlist: Playlist?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if playlist != nil {
            buttonPressLabel.text = playlist!.title
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
