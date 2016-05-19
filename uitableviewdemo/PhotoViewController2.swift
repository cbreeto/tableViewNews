//
//  PhotoViewController2.swift
//  uitableviewdemo
//
//  Created by Carlos Brito on 18/05/16.
//  Copyright © 2016. All rights reserved.
//

import UIKit

class PhotoViewController2: UIViewController {

    var photo: Photo!
    
    @IBOutlet weak var captionTextView: UITextView!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var photographerImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "View Photo"
        if photo != nil {
            self.imageView.image = UIImage(named: photo.name)
            captionTextView.text = photo.caption
            photographerImageView.image = UIImage(named: photo.photographerProfileImageName)
            //image view profile , rounded, white border
            photographerImageView.layer.borderColor = UIColor.whiteColor().CGColor
            photographerImageView.layer.cornerRadius = photographerImageView.bounds.width / 2.0
            photographerImageView.layer.masksToBounds = true
            photographerImageView.layer.borderWidth = 1.3
            
        }
        
    }



}
