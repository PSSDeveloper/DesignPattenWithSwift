//
//  FactoryMethodPattern.swift
//  DesignPattern
//
//  Created by pengshuai on 2024/5/16.
//

import Foundation

///以下是工厂方法模式
///
///
///抽象产品
protocol Logger {
    func log(message: String)
}

class ConsoleLogger: Logger {
    func log(message: String) {
        print("Console Logger: \(message)")
    }
}

class FileLogger: Logger {
    func log(message: String) {
        print("File Logger: \(message)")
    }
}

//抽象工厂定义
protocol LoggerFactory {
    func createLogger() -> Logger
}
//具体工厂类
class ConsoleLoggerFactory: LoggerFactory {
    func createLogger() -> any Logger {
        return ConsoleLogger()
    }
}

class FileLoggerFactory: LoggerFactory {
    func createLogger() -> any Logger {
        return FileLogger()
    }
}

/**
工厂方法模式又称为工厂模式，也叫做虚拟构造器模式或者多态工厂模式
 
 1.工厂父类负责定义创建产品对象的公共接口
 2.工厂子类则负责生成具体的产品对象
 
 抽象产品
 具体产品
 抽象工厂
 具体工厂
 
 */
//在使用处添加的调用代码,一般在业务逻辑中
private func clientCode(factory: LoggerFactory) -> Logger {
    let logger = factory.createLogger()
    return logger
//    logger.log(message: "Hello, Factory Method Pattern!")
}

//使用具体的工厂对象创建对应的具体产品
let consoleFactory = ConsoleLoggerFactory()
//clientCode(factory: consoleFactory)


let fileFactory = FileLoggerFactory()
//clientCode(factory: fileFactory)
