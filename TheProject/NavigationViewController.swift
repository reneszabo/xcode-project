//
//  NavigationViewController.swift
//  TheProject
//
//  Created by Rene Ramirez on 2015-12-12.
//  Copyright © 2015 Ramirez and Hernandez. All rights reserved.
//

import UIKit

class NavigationViewController: UINavigationController {

  
  var menu:UIView?
  var iconOne:TalkabitNavegationIconView?
  var iconTwo:TalkabitNavegationIconView?
  var iconThree:TalkabitNavegationIconView?
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      menu = UIView(frame: CGRect(origin: CGPoint(x: self.view.frame.width/8, y: self.view.frame.size.height-70), size: CGSize(width: self.view.frame.width - self.view.frame.width/4, height: 50)))
      menu!.backgroundColor = UIColor.init(hex: "#000000aa")
      menu!.layer.cornerRadius = 25.0
      
      
      
      iconOne = TalkabitNavegationIconView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: menu!.frame.width/3 , height: 50) ))
      iconOne!.backgroundColor = UIColor.redColor()
      iconOne!.setIconName("myProfile")
      menu!.addSubview(iconOne!)
      
      iconTwo = TalkabitNavegationIconView(frame: CGRect(origin: CGPoint(x: (menu!.frame.width/3), y: 0), size: CGSize(width: menu!.frame.width/3 , height: 50) ))
      iconTwo!.backgroundColor = UIColor.blueColor()
      iconTwo!.setIconName("record")
      menu!.addSubview(iconTwo!)
      
      iconThree = TalkabitNavegationIconView(frame: CGRect(origin: CGPoint(x: (menu!.frame.width/3)*2, y: 0), size: CGSize(width: menu!.frame.width/3 , height: 50) ))
      iconThree!.backgroundColor = UIColor.greenColor()
      iconThree!.setIconName("home")
      menu!.addSubview(iconThree!)
      
      
      self.view.addSubview(menu!)
     
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
