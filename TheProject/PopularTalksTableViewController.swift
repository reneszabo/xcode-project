//
//  PopularTalksTableViewController.swift
//  TheProject
//
//  Created by Ramirez Szabo Rene Roberto on 12/10/15.
//  Copyright (c) 2015 Ramirez and Hernandez. All rights reserved.
//

import UIKit

class PopularTalksTableViewController: UITableViewController {


  
  var data = [
      Talk(
        name: "SORRY U.S. BUT CANADA EATS TRUKEY ON THE RIGHT DAY!",
        userCreator: User(name: "Hernandez, Erick", photo: ""),
        userVs: User(name: "Ramirez, Rene", photo: ""),
        imagePath: "talkProfiles_1"
    ),
    Talk(
      name: "BIEBER IS ABSOLUTELY HORRIBLE. HOW CAN ANYONE LISTEN TO THIS HORRIBLE MUSIC!!",
      userCreator: User(name: "Abas, Abbigail", photo: ""),
      userVs: User(name: "Cameron, Jason", photo: ""),
      imagePath: "talkProfiles_2"
    ),
    Talk(
      name: "BLACK FRIDAY IS SO OVERRATED!",
      userCreator: User(name: "Coelho, Amanda", photo: ""),
      userVs: User(name: "Guerrieri, Jonathan", photo: ""),
      imagePath: "talkProfiles_3"
    ),
    Talk(
      name: "BLUE JAYS PLAYOFF RUN WAS SUCH A FLUKE. THEY NEED SOME BETTER PITCHING ASAP...",
      userCreator: User(name: "Jiang, Qiongrong", photo: ""),
      userVs: User(name: "Tai, Yuk Ming", photo: ""),
      imagePath: "talkProfiles_4"
    ),
    Talk(
      name: "BEARDS ARE AWESOME!!",
      userCreator: User(name: "Hill, Alison", photo: ""),
      userVs: User(name: "Valdez, Normand", photo: ""),
      imagePath: "talkProfiles_5"
    ),
  ]
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
      let menu:UIView = UIView(frame: CGRect(origin: CGPoint(x: self.view.frame.width/8, y: self.view.frame.size.height-70), size: CGSize(width: self.view.frame.width - self.view.frame.width/4, height: 50)))
      menu.backgroundColor = UIColor.init(hex: "#000000aa")
      menu.layer.cornerRadius = 25.0
      self.navigationController?.view.addSubview(menu)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return data.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TalkCell", forIndexPath: indexPath) as! TalkTableViewCell

        cell.profileImages.image = UIImage(named: data[indexPath.row].imagePath)
      cell.userCreatorName.text = data[indexPath.row].userCreator?.name
      cell.talkTitle.text = data[indexPath.row].title
   

        return cell
    }
    
  override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
    if(indexPath.row%2 == 0){
      cell.backgroundColor = UIColor.init(hex: "#e6e6e6")
    }else{
      cell.backgroundColor = UIColor.whiteColor()
    }
  }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
