//
//  DPPatternViewModel.swift
//  DesignPattern
//
//  Created by pengshuai on 2024/5/16.
//

import Foundation


struct DPPatternViewModel {
    
    ///读取本地JSON数据，并转成model返回
    static func fetchPatternData() -> [DPTypeDataModel]? {
        //获取本地文件路径
        if let filePath = Bundle.main.path(forResource: "designpattern", ofType: "json") {
            let fileURL = URL(filePath: filePath)
            do {
                let resultData = try Data(contentsOf: fileURL)
                let decoder = JSONDecoder()
                let typeDatas = try decoder.decode([DPTypeDataModel].self, from: resultData)
                return typeDatas
            } catch {
                return nil
            }
        }
        return nil
    }
    
}
