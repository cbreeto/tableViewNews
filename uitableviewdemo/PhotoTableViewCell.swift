//
//  PhotoTableViewCell.swift
//  uitableviewdemo
//
//  Created by Carlos Brito on 18/05/16.
//

import UIKit

class PhotoTableViewCell: UITableViewCell {


    // MARK: - Model
    var photo: Photo! {
        didSet {
            self.updateUI()
        }
    }
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photographerProfileImageView: UIImageView!
    
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var gradientView: UIView!
    
    private func updateUI() {
        photoImageView.image = UIImage(named: photo.name)
        photographerProfileImageView.image = UIImage(named: photo.photographerProfileImageName)
        self.captionLabel.text = photo.caption
        
        //Configure the gradient
        let gradient = CAGradientLayer()
        gradient.frame = self.gradientView.bounds
        gradient.colors = [UIColor(red: 0, green: 0, blue: 0, alpha: 0.0).CGColor, UIColor(red: 0, green: 0, blue: 9, alpha: 0.15).CGColor]
        self.gradientView.layer.insertSublayer(gradient, atIndex: 0)
        
        //image view profile , rounded, white border
        photographerProfileImageView.layer.borderColor = UIColor.whiteColor().CGColor
        photographerProfileImageView.layer.cornerRadius = photographerProfileImageView.bounds.width / 2.0
        photographerProfileImageView.layer.masksToBounds = true
        photographerProfileImageView.layer.borderWidth = 1.3
        
        
    }
    
    
    
    
    
}
