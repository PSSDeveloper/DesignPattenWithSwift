//
//  DPTypeDataModel.swift
//  DesignPattern
//
//  Created by pengshuai on 2024/5/16.
//

import Foundation

struct DPTypeDataModel: Decodable {
    let type: String
    let goal: String
    let contents: [DPContentModel]
}


struct DPContentModel: Decodable {
    let name: String
    let desc: String?
}
