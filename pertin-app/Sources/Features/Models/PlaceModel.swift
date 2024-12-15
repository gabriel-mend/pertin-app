//
//  PlaceModel.swift
//  pertin-app
//
//  Created by Gabriel on 11/12/24.
//

import Foundation
import UIKit

struct Place: Decodable {
    let id: String
    let name: String
    let description: String
    let coupons: Int
    let latitude: Double
    let longitude: Double
    let address: String
    let phone: String
    let cover: String
    let categoryId: String
}
