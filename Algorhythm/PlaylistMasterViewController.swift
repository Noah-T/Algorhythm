//
//  ViewController.swift
//  Algorhythm
//
//  Created by Noah Teshu on 4/16/15.
//  Copyright (c) 2015 Noah Teshu. All rights reserved.
//

import UIKit

class PlaylistMasterViewController: UIViewController {
    //array that will contain imageViews
    var playlistsArray: [UIImageView] = []
    @IBOutlet weak var playlistImageView0: UIImageView!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        for index in 0..<playlistsArray.count{
            //get curent playlist during iteration
            let playlist = Playlist(index: index)
            let playlistImageView = playlistsArray[index]
            playlistImageView.image = playlist.icon
            playlistImageView.backgroundColor = playlist.backgroundColor
        }
        

        playlistsArray.append(playlistImageView0)
        let playlist = Playlist(index: 0)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showPlaylistDetailSegue"{
            
            let playlistImageView = sender!.view as! UIImageView
            //if the tapped image is found in the playlistsArray successfully 
            
            if let index = find(playlistsArray, playlistImageView){
                let playlistDetailController = segue.destinationViewController as! PlaylistDetailViewController
                playlistDetailController.playlist = Playlist(index: index)
            }
            

            
            

            
        }
        
    }
    
    @IBAction func showPlaylistDetail(sender: AnyObject) {
            performSegueWithIdentifier("showPlaylistDetailSegue", sender: sender)
    }
    
    

}

