//
//  TalkViewController.swift
//  TheProject
//
//  Created by Rene Ramirez on 2015-12-11.
//  Copyright © 2015 Ramirez and Hernandez. All rights reserved.
//

import UIKit
import AVFoundation

class TalkViewController: UIViewController {

  var player:AVPlayer!
  var playerItem:AVPlayerItem!
  var avPlayerLayer:AVPlayerLayer!
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
        let url:NSURL = NSURL(string: "http://jplayer.org/video/m4v/Big_Buck_Bunny_Trailer.m4v")!
        avPlayerLayer = AVPlayerLayer(player: player)
      avPlayerLayer.frame = CGRectMake(20,100,200,150)
      self.view.layer.addSublayer(avPlayerLayer)
      player = AVPlayer(URL: url)
      player.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
