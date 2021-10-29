//
//  main.swift
//  4|_ФЛ
//
//  Created by Anna Bagaeva on 29.10.2021.
//

import Foundation

//1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
//
//2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
//
//3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.
//
//4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
//
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//
//6. Вывести значения свойств экземпляров в консоль.
class Car {
    let brand: String
    let year: Int
}
enum Fuel {
    case gas
    case petrol
    case diesel
}

enum Color {
    case black
    case red
    case silver
}

enum Doors {
    case two
    case four
    case none
}

enum Passengers {
    case two
    case foure
    case one
}
//MARK: enum взятые из прошлой домашки 3
enum EngineStatus {
    case start
    case stop
}

enum WindowState {
    case open
    case close
}

class sportCar: Car {
    let sportCar: String = "Ferrari"
    let usingFuel: Fuel
    let sportCarColor: Color
    let doorsAmount: Doors
    let passengersCapacity: Passengers
    
    var maxSpeed: Int
    var speedBooster: String
    var ignition: EngineStatus {
        willSet {
            if newValue == .start {
                print ("\(sportCar) engine is on")
            } else {print("\(sportCar) engine is off")}
        }
    }
    var windows: WindowState {
        willSet {
            if newValue == .open {
                print("\(sportCar) windows are open")
            } else { print("\(sportCar) windows are closed") }
        }
    }
}

final class trunkCar: Car {
    let trunkCar: String = "MAN"
    let usingFuel: Fuel
    let sportCarColor: Color
    let doorsAmount: Doors
    let passengersCapacity: Passengers
    
    var maxTrunckVolume: Int
    var trunkForm: String
    var cabin: String
    var ignition: EngineStatus {
        willSet {
            if newValue == .start {
            print ("\(trunkCar) engine is on")
        } else {print("\(trunkCar) engine is off")}
    }
}
    var windows: WindowState {
        willSet {
            if newValue == .open {
            print("\(trunkCar) windows are open")
        } else { print("\(trunkCar) windows are closed") }
    }
}
}
