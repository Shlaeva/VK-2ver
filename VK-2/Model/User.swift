//
//  User.swift
//  VK-2
//
//  Created by Julie on 13.12.2020.
//

import Foundation
import UIKit

struct User {
    var userName: String
    var userImage: UIImage
}

var user: [User] = [User(userName: "Harry Potter", userImage: UIImage(named: "Harry")!),
User(userName: "Ron Weasley", userImage: UIImage(named: "Ron")!),
User(userName: "Hermione Granger", userImage: UIImage(named: "Hermiona")!),
User(userName: "Albus Dumbledore", userImage: UIImage(named: "Albus")!)]



var PicturesDictionary: [String: [String]] = ["Ron Weasley" : ["ron_1", "ron_2", "ron_3", "ron_4", "ron_5"],
                "Harry Potter" : ["harry_1", "harry_2", "harry_3", "harry_4", "harry_5"],
                "Hermione Granger" : ["hermione_1", "hermione_2", "hermione_3", "hermione_4", "hermione_5"],
                "Albus Dumbledore" : ["albus_1", "albus_2", "albus_3", "albus_4", "albus_5"]]



