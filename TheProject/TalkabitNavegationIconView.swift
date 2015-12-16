//
//  TalkabitNavegationIconView.swift
//  TheProject
//
//  Created by Rene Ramirez on 2015-12-16.
//  Copyright © 2015 Ramirez and Hernandez. All rights reserved.
//

import UIKit

class TalkabitNavegationIconView: UIView {
  var name:String = ""
  override init(frame: CGRect) {
    super.init(frame: frame)
    
//    self.frame = frame
    
    addBehavior()
  }
//  convenience init(){
//    self.init(frame: CGRect.zero)
//  }

  required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
  
  func addBehavior(){
    let recognizer: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "tapProfile:")
    self.addGestureRecognizer(recognizer)
    
  }
  
  
  func tapProfile(recognizer: UITapGestureRecognizer){
    //self.performSegueWithIdentifier("TalkViewControllerSegue", sender: self)
    
    print("TAP" + self.name);
  }
  
  func setIconName(theName: String){
    self.name = theName;
  }
  
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
