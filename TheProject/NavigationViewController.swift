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
      iconOne!.backgroundColor = UIColor(white: 1, alpha: 0)
      iconOne!.setIconName("meProfile")
      let imageViewOne: UIImageView = UIImageView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: menu!.frame.width/3 , height: 50) ))
      imageViewOne.image = UIImage(named: "me_Icon")
      imageViewOne.contentMode = UIViewContentMode.ScaleAspectFit
      iconOne?.addSubview(imageViewOne)
      menu!.addSubview(iconOne!)
      let recognizer: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "tapProfile:")
      iconOne!.addGestureRecognizer(recognizer)
      
      iconTwo = TalkabitNavegationIconView(frame: CGRect(origin: CGPoint(x: (menu!.frame.width/3), y: 0), size: CGSize(width: menu!.frame.width/3 , height: 50) ))
      iconTwo!.backgroundColor = UIColor(white: 1, alpha: 0)
      iconTwo!.setIconName("record")
      let imageViewTwo: UIImageView = UIImageView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: menu!.frame.width/3 , height: 50) ))
      imageViewTwo.image = UIImage(named: "record_Icon")
      imageViewTwo.contentMode = UIViewContentMode.ScaleAspectFit
      iconTwo?.addSubview(imageViewTwo)
      menu!.addSubview(iconTwo!)
      let recognizerTwo: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "tapRecord:")
      iconTwo!.addGestureRecognizer(recognizerTwo)
      
      iconThree = TalkabitNavegationIconView(frame: CGRect(origin: CGPoint(x: (menu!.frame.width/3)*2, y: 0), size: CGSize(width: menu!.frame.width/3 , height: 50) ))
      iconThree!.backgroundColor = UIColor(white: 1, alpha: 0)
      iconThree!.setIconName("home")
      let imageViewThree: UIImageView = UIImageView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: menu!.frame.width/3 , height: 50) ))
      imageViewThree.image = UIImage(named: "home_Icon")
      imageViewThree.contentMode = UIViewContentMode.ScaleAspectFit
      iconThree?.addSubview(imageViewThree)
      menu!.addSubview(iconThree!)
      let recognizerThree: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "tapHome:")
      iconThree!.addGestureRecognizer(recognizerThree)
      
      
      
      self.view.addSubview(menu!)
     
    }
  func tapHome(recognizer: UITapGestureRecognizer){
    self.popToRootViewControllerAnimated(true)
  }
 
  func tapProfile(recognizer: UITapGestureRecognizer){
    let vc: AnyObject = (self.storyboard?.instantiateViewControllerWithIdentifier("meProfile"))!;
    self.showViewController(vc as! UIViewController, sender: vc)
  }
  func tapRecord(recognizer: UITapGestureRecognizer){
    let vc: AnyObject = (self.storyboard?.instantiateViewControllerWithIdentifier("recordViewController"))!;
    self.showViewController(vc as! UIViewController, sender: vc)
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  func hideMenu(){
    self.menu?.hidden = true
  }
  func showMenu(){
    if(self.menu != nil ){
      self.menu?.hidden = false
    }
    
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
