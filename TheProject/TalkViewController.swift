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

  @IBOutlet var viewContainer: UIView!
  
 
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
      
      
      let recognizer: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: "swipeRight:")
      recognizer.direction = .Right
      self.viewContainer.addGestureRecognizer(recognizer)

}
  
  func swipeRight(recognizer: UISwipeGestureRecognizer){
    self.navigationController?.popViewControllerAnimated(true)
  }
  override func viewWillAppear(animated: Bool) {
    self.navigationController?.navigationBarHidden = true;
    self.navigationController?.navigationItem.backBarButtonItem?.enabled = true
    (self.navigationController as! NavigationViewController).showMenu()
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
    
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
