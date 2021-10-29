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
    var brand: String
    var year: Int
    
    
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

class SportCar: Car {
    var sportCar: String
    let usingFuel: Fuel
    let sportCarColor: Color
    let doorsAmount: Doors
    let passengersCapacity: Passengers
    
    var maxSpeed: Int
    var speedBooster: String
    init(brand: String,
         usingFuel: Fuel,
         sportCarColor: Color,
         doorsAmount: Doors,
         passengersCapacity: Passengers)
    {
        self.brand = brand
        self.usingFuel = usingFuel
        self.sportCarColor = sportCarColor
        self.doorsAmount = doorsAmount
        self.passengersCapacity = passengersCapacity
    }
    var ignition: EngineStatus {
        willSet {
            switch newValue {
            case .start:
                print ("\(sportCar) engine is on")
            case .stop:
                print("\(sportCar) engine is off")
            }
        }
    }
    var windows: WindowState {
        willSet {
            switch newValue {
            case .open:
                print("\(sportCar) windows are open")
            case .close:
                print("\(sportCar) windows are closed")
            }
        }
    }
}

final class TrunkCar: Car {
    
    let trunkCar: String
    let usingFuel: Fuel
    let trunkCarColor: Color
    let doorsAmount: Doors
    let passengersCapacity: Passengers
    
    var maxTrunkVolume: Int
    var trunkForm: String
    var cabin: String
    var ignition: EngineStatus {
        willSet {
            switch newValue {
            case .start:
                print ("\(trunkCar) engine is on")
            case .stop:
                print("\(trunkCar) engine is off")
            }
        }
    }
    var windows: WindowState {
        willSet {
            switch newValue {
            case .open:
                print("\(trunkCar) windows are open")
            case .close:
                print("\(trunkCar) windows are closed")
            }
        }
    }
    
    init(brand: String,
         usingFuel: Fuel,
         trunkCarColor: Color,
         doorsAmount: Doors,
         passengersCapacity: Passengers,
         maxTrunkVolume: Int,
         trunkForm: String,
         cabin: String,
         ignition: EngineStatus,
         windows: WindowState)
    {
        self.brand = brand
        self.usingFuel = usingFuel
        self.trunkCarColor = trunkCarColor
        self.doorsAmount = doorsAmount
        self.passengersCapacity = passengersCapacity
        self.maxTrunkVolume = maxTrunkVolume
        self.trunkForm = trunkForm
        self.cabin = cabin
        self.ignition = ignition
        self.windows = windows
    }
}
let trunkCar1 = TrunkCar(brand: "MAN",
                         usingFuel: .diesel,
                         trunkCarColor: .black,
                         doorsAmount: .two,
                         passengersCapacity: .two,
                         maxTrunkVolume: 2500,
                         trunkForm: "Truck",
                         cabin: "cabin with a sleeping place",
                         ignition: EngineStatus.start,
                         windows: open)


