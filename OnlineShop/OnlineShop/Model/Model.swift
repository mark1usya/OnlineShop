//
//  Model.swift
//  OnlineShop
//
//  Created by Mark Pashukevich on 17.09.24.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreCombineSwift
struct Product: Identifiable, Codable{
    @DocumentID var id: String?
    var name: String
    var description: String
    var image: String
    var price: Int
    var isFavourite: Bool
    var quantityInCart: Int?
    
}
