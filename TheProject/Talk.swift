//
//  Talk.swift
//  TheProject
//
//  Created by Rene Ramirez on 2015-12-11.
//  Copyright © 2015 Ramirez and Hernandez. All rights reserved.
//


import UIKit

struct Talk {
  var title: String?
  var userCreator: User?
  var userVs: User?
  var imagePath: String
  init(name: String?, userCreator: User,userVs: User, imagePath:String){
    self.title = name
    self.userCreator = userCreator
    self.userVs = userVs
    self.imagePath = imagePath
  }
}