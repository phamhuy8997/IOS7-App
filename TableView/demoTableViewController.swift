//
//  demoTableViewController.swift
//  TableView
//
//  Created by Huy Pham on 5/2/17.
//  Copyright © 2017 Huy Pham. All rights reserved.
//

import UIKit

class demoTableViewController: UITableViewController {
    
    var DanhSach : [String]!
    var LogoImage : [UIImage]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DanhSach = [
            "Trần Ngọc Anh - 1999",
            "Nguyễn Thị Ngọc - 1998",
            "Phương Anh - 2000",
            "Trâm Anh - 1995",
            "Thanh Mai - 1991",
            "Ánh Tuyết - 1996",
            "Thu Thảo - 2002",
            "Minh Nguyệt - 2001",
            "Thu Uyên - 1999",
            "Phạm Hương - 1994",
            "Minh Tuyền - 1997",
            "Kim Tuyến - 2001",
            "Như Quỳnh - 1997",
            "Hồng Hạnh - 1998",
            "Cát Tường - 1995",
            "Hồng Ngát - 1999",
        ]
        
        LogoImage = [
            UIImage(named: "image1.png")!,
            UIImage(named: "image2.png")!,
            UIImage(named: "image5.png")!,
            UIImage(named: "image6.png")!,
            UIImage(named: "image7.png")!,
            UIImage(named: "image8.png")!,
            UIImage(named: "image12.png")!,
            UIImage(named: "image20.png")!,
            UIImage(named: "image21.jpg")!,
            UIImage(named: "image22.png")!,
            UIImage(named: "image23.jpeg")!,
            UIImage(named: "image24.jpeg")!,
            UIImage(named: "image11.jpg")!,
            UIImage(named: "image15.jpeg")!,
            UIImage(named: "image16.jpeg")!,
            UIImage(named: "image14.jpeg")!,
        ]

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return min(DanhSach.count, LogoImage.count)
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
//
//        //cell.textLabel?.text = DanhSach[indexPath.row]
//        cell.imageView?.image = LogoImage[indexPath.row]
//
//        return cell
        
        let cellIndentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIndentifier, for: indexPath)
        
        
        //configure cell
        
        cell.textLabel?.text = DanhSach[indexPath.row]
        cell.imageView?.sizeToFit()
        cell.imageView?.image = LogoImage[indexPath.row]
        
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
