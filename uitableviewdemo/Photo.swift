//
//  Photo.swift
//  uitableviewdemo
//
//  Created by Carlos Brito on 17/05/16.
//

import Foundation

class Photo {
    var name: String = ""
    var photographerProfileImageName: String = ""
    var caption: String = ""
    
    init (name: String, photographer: String, caption: String){
        self.name = name
        self.photographerProfileImageName = photographer
        self.caption = caption
    }
    
    static func downloadAllPhotos() -> [Photo] {
        var photos = [Photo]()
        
        for i in 1...10 {
            let photo = Photo(name: "\(i)", photographer: "p\(i)", caption: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in.")
            photos.append(photo)
        }
        return photos
    }
}