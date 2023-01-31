//
//  Message.swift
//  Messenger
//
//  Created by Akhil1 Singh on 31/01/23.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
