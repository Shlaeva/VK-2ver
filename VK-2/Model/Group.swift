//
//  Group.swift
//  VK-2
//
//  Created by Julie on 13.12.2020.
//

import Foundation
import UIKit

struct Group: Equatable {
    var groupName: String
    var groupImage: UIImage
}

var group: [Group] = [Group(groupName: "HOGWARTS", groupImage: UIImage(named: "Hogwards")!),
Group(groupName: "SLYTHERIN", groupImage: UIImage(named: "Slytherin")!),
Group(groupName: "GRYFFINDOR", groupImage: UIImage(named: "Gryffindor")!),
Group(groupName: "Astronomy Room", groupImage: UIImage(named: "Astronomy")!),
Group(groupName: "Triwizard Maze", groupImage: UIImage(named: "Maze")!),
Group(groupName: "Dumbledore's Office", groupImage: UIImage(named: "DumbledoresOffice")!),
Group(groupName: "Owlery", groupImage: UIImage(named: "Owlery")!)]
