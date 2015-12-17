//
//  MeViewController.swift
//  TheProject
//
//  Created by Rene Ramirez on 2015-12-16.
//  Copyright © 2015 Ramirez and Hernandez. All rights reserved.
//

import UIKit

class MeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  override func viewWillAppear(animated: Bool) {
    self.navigationController?.navigationBarHidden = false;
    (self.navigationController as! NavigationViewController).showMenu()
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
