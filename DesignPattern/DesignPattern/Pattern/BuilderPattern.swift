//
//  BuilderPattern.swift
//  DesignPattern
//
//  Created by pengshuai on 2024/5/19.
//

import Foundation

///生成器模式

//产品,往往有很多很多属性，或者属性之间有依赖关系
class Car {
    var engine: String?
    var tires: Int?
    var body: String?
}

//生成器接口
protocol CarBuilder {
    func addEngine(engine: String)
    func addTires(tires: Int)
    func addBody(body: String)
    func build() -> Car
}

//具体生成器
class SedanBuilder: CarBuilder {
    private var car: Car
    
    init() {
        self.car = Car()
    }
    
    func addEngine(engine: String) {
        car.engine = engine
    }
    
    func addTires(tires: Int) {
        car.tires = tires
    }
    
    func addBody(body: String) {
        car.body = body
    }
    
    func build() -> Car {
        return car
    }
}

//指导者1,本案中为汽车制造商
class CarManufacturer {
    private var builder: CarBuilder
    
    init(builder: CarBuilder) {
        self.builder = builder
    }
    
    func construct() -> Car {
        builder.addEngine(engine: "V6")
        builder.addTires(tires: 4)
        builder.addBody(body: "Sedan")
        return builder.build()
    }
}
//指导者2，沃尔沃汽车制造商
class VololManufacturer {
    private var builder: CarBuilder
    
    init(builder: CarBuilder) {
        self.builder = builder
    }
    
    func construct() -> Car {
        builder.addEngine(engine: "T5")
        builder.addTires(tires: 4)
        builder.addBody(body: "Volol")
        return builder.build()
    }
}
