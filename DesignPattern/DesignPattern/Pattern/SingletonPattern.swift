//
//  SingletonPattern.swift
//  DesignPattern
//
//  Created by pengshuai on 2024/5/16.
//

import Foundation


///单例模式的实现
class DPLocationManager {
    static let manager = DPLocationManager()
    ///将初始化方法标记成private，拒绝用户自己实例化
    private init() {}
}

/**
 单例模式确保某一个类只有一个实例，而且自行实例化并向整个系统提供这个实例，这个类称为单例类，它提供全局访问的方法。
 
 */
