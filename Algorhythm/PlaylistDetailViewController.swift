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
    var segueLabelText: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        buttonPressLabel.text = segueLabelText

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
