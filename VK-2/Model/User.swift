//
//  User.swift
//  VK-2
//
//  Created by Julie on 13.12.2020.
//

import Foundation
import UIKit

struct User: Equatable {
    var userName: String
    var userImage: UIImage
}

var user: [User] = [User(userName: "Harry Potter", userImage: UIImage(named: "Harry")!),
User(userName: "Ron Weasley", userImage: UIImage(named: "Ron")!),
User(userName: "Hermione Granger", userImage: UIImage(named: "Hermiona")!),
User(userName: "Albus Dumbledore", userImage: UIImage(named: "Albus")!),
User(userName: "Gabrielle Delacour", userImage: UIImage(named: "Gabrie")!),
User(userName: "Severus Snape", userImage: UIImage(named: "Severus")!),
User(userName: "Rubeus Hagrid", userImage: UIImage(named: "Rubeus")!),
User(userName: "Fred And George Weasley", userImage: UIImage(named: "Weasley")!),
User(userName: "Luna Lovegood", userImage: UIImage(named: "Luna")!),
User(userName: "Ginny Weasley", userImage: UIImage(named: "Ginny")!)]



var PicturesDictionary: [String: [String]] = ["Ron Weasley" : ["ron_1", "ron_2", "ron_3", "ron_4", "ron_5"],
                "Harry Potter" : ["harry_1", "harry_2", "harry_3", "harry_4", "harry_5"],
                "Hermione Granger" : ["hermione_1", "hermione_2", "hermione_3", "hermione_4", "hermione_5"],
                "Albus Dumbledore" : ["albus_1", "albus_2", "albus_3", "albus_4", "albus_5"],
                "Gabrielle Delacour" : ["gabrie_1", "gabrie_3", "gabrie_4", "gabrie_7"],
                "Severus Snape" : ["severus_1", "severus_2", "severus_3", "severus_4", "severus_5"],
                "Rubeus Hagrid" : ["rubeus_1", "rubeus_2", "rubeus_3", "rubeus_4", "rubeus_5"],
                "Fred And George Weasley" : ["weasley_1", "weasley_2", "weasley_3", "weasley_4", "weasley_5", "weasley_6"],
                "Luna Lovegood" : ["luna_1", "luna_2", "luna_3", "luna_4", "luna_5", "luna_6"],
                "Ginny Weasley" : ["ginny_1", "ginny_2", "ginny_3", "ginny_4", "ginny_5", "ginny_6"]]






