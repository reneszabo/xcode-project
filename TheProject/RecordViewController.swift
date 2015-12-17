//
//  RecordViewController.swift
//  TheProject
//
//  Created by Rene Ramirez on 2015-12-16.
//  Copyright © 2015 Ramirez and Hernandez. All rights reserved.
//

import UIKit

class RecordViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
      let recognizer: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: "swipeRight:")
      recognizer.direction = .Right
      self.view.addGestureRecognizer(recognizer)
        // Do any additional setup after loading the view.
    }
  func swipeRight(recognizer: UISwipeGestureRecognizer){
    self.navigationController?.popViewControllerAnimated(true)
  }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  override func viewWillAppear(animated: Bool) {
    self.navigationController?.navigationBarHidden = true;
    self.navigationController?.navigationItem.backBarButtonItem?.enabled = true
    (self.navigationController as! NavigationViewController).hideMenu()
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
