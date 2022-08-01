//
//  Person.swift
//  Project10
//
//  Created by Juliano Santos on 26/7/22
//

import UIKit

class Person: NSObject, NSCoding {

	var name: String
	var image: String

    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "name")
        aCoder.encode(image, forKey: "image")
    }
    
    required init?(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObject(forKey: "name") as? String ?? ""
        image = aDecoder.decodeObject(forKey: "image") as? String ?? ""
    }
    
	init(name: String, image: String) {
		self.name = name
		self.image = image
	}
}
