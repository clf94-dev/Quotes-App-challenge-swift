//
//  Quote.swift
//  Quotes App challenge
//
//  Created by Carmen Lucas on 18/6/23.
//

import Foundation

class Quote: Identifiable, Decodable{
    var id:UUID?
    var name:String
    var quotes:[String]
    var image:String
}
