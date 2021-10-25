//
//  main.swift
//  3|_ФЛ
//
//  Created by Anna Bagaeva on 23.10.2021.
//

import Foundation

//1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.

struct Car {
    let brand: String
    let year: Int
    let capacity: Int
    var windows: String
    var ignition: String
}
var sportCar = (brand: "Mazda", year: 2020, capacity: 350, windows: "окна открыты.")

var trunkCar = (brand: "MAN", year: 1999, capacity: 2500, windows: "окна закрыты", ignition: "двигатель заглушен.")

print("Легковой автомобиль марки \(sportCar.brand), год выпуска \(sportCar.year), вместимость багажника \(sportCar.capacity) литров, \(sportCar.windows)")


print("Грузовой автомобиль марки \(trunkCar.brand), год выпуска \(trunkCar.year), грузоподъмность \(trunkCar.capacity) тонн, \(trunkCar.windows), \(trunkCar.ignition)")

let trunkCarMaxCapacity = 2500
var trunkCarUsedCapacity = 1500
var trunkCarFreeCapacity = trunkCarMaxCapacity  - trunkCarUsedCapacity

if trunkCarFreeCapacity <= 0 {
    print("Максимальная грузоподъемность грузового автомобиля превышена")
} else {
    print("Грузовой автомобиль может вместить еще \(trunkCarFreeCapacity) тонн.")
}

enum engineState {
    case start
    case stop
}

enum windowState {
    case open
    case close
}

enum trunkState {
    case full
    case empty
}

struct SportCar {
    let brandCar : String
    let releaseYear : Int
    var trunkVolume : Double {
        willSet {
            if (trunkState == .empty) && (trunkVolume > 0) && (trunkVolume != 0) && (newValue < trunkVolume) {
                let space = trunkVolume - newValue
                print ("\(brandCar) trunk free: \(space)")
            } else { print("Input error or \(brandCar) trunk is full.")}
        }
    }
    var engineState : engineState {
        willSet {
            if newValue == .start {
                print ("\(brandCar) engine is on")
            } else {print("\(brandCar) engine is off")}
        }
    }
    var windowState : windowState {
        willSet {
            if newValue == .open {
                print("\(brandCar) windows are open")
            } else { print("\(brandCar) windows are closed") }
        }
    }
    var trunkState : trunkState
    mutating func emptyTrunk() {
        self.trunkState = .empty
        print ("\(brandCar) trunk is empty")
    }
}

struct TruckCar {
    let brandTruck : String
    let releaseYear : Int
    var bodyVolume : Double {
        willSet {
            if (trunkState == .empty) && (bodyVolume > 0) && (bodyVolume != 0) && (newValue < bodyVolume) {
                let space = bodyVolume - newValue
                print ("\(brandTruck) trunk free: \(space)")
            } else { print("Input error or \(brandTruck) trunk is full.")}
        }
    }
    var engineState : engineState {
        willSet {
            if newValue == .start {
                print ("\(brandTruck) engine is on")
            } else {print("\(brandTruck) engine is off")}
        }
    }
    var windowState : windowState {
        willSet {
            if newValue == .open {
                print("\(brandTruck) windows are open")
            } else { print("\(brandTruck) windows are close") }
        }
    }
    var trunkState : trunkState
    mutating func emptyTrunck() {
        self.trunkState = .empty
        print ("\(brandTruck) trunck is empty")
    }
}

var sportCar1 = SportCar(brandCar: "Mazda", releaseYear: 2020, trunkVolume: 580.0 , engineState: .stop, windowState: .open, trunkState: .empty)
var sportCar2 = SportCar(brandCar: "Audi", releaseYear: 2017, trunkVolume: 480.0, engineState: .stop, windowState: .close, trunkState: .full)

var truckCar1 = TruckCar(brandTruck: "MAN", releaseYear: 2012, bodyVolume: 100000.0, engineState: .start, windowState: .open, trunkState: .full)
var truckCar2 = TruckCar(brandTruck: "Kamaz", releaseYear: 2013, bodyVolume: 150000.0, engineState: .start, windowState: .close, trunkState: .empty)

print ("Information about the  sportcar: brandCar \(sportCar1.brandCar), releaseYear: \(sportCar1.releaseYear), engine is \(sportCar1.engineState), free trunkVolume: \(sportCar1.trunkVolume)")
