//
//  PhotosTableViewController.swift
//  uitableviewdemo
//
//  Created by Carlos Brito on 17/05/16.
//

import UIKit

class PhotosTableViewController: UITableViewController {

    var photos = [Photo]()
    override func viewDidLoad() {
        super.viewDidLoad()

        photos = Photo.downloadAllPhotos()
        
        self.tableView.separatorStyle = .None
        self.tableView.backgroundColor = UIColor.blackColor()
        
    }



    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.photos.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Photo Cell", forIndexPath: indexPath) as! PhotoTableViewCell
        
        let photo = self.photos[indexPath.row]

        // Configure the cell...

      //  cell.textLabel?.text = photo.caption
       // cell.imageView?.image = UIImage(named: photo.name)
        
        cell.photo = photo
        cell.selectionStyle = .None
        
        return cell
    }
    
    
    
    
    override func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 250.0
    
    }
    
    // MARK: - UITableViewDelegate
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let selectedPhoto = self.photos[indexPath.row]
        
        self.performSegueWithIdentifier("Show Photo", sender: selectedPhoto)
    }
    
    
    //MARK: - Navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "Show Photo" {
            if let photoViewController = segue.destinationViewController as? PhotoViewController2 {
                let selectedPhoto = sender as! Photo
                
                photoViewController.photo = selectedPhoto
                
            }
        }
        
    }
}
