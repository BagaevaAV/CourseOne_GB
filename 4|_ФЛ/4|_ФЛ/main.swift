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
    case fore
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

enum TrunkState {
    case full
    case empty
}

class sportCar: Car {
    let usingFuel: Fuel
    let sportCarColor: Color
    let doorsAmount: Doors
    let passengersCapacity: Passengers
    let ignition: EngineStatus
    let windows: WindowState
    let fuelTrank: TrunkState
}
var maxSpeed: Int
var speedBooster: String

class trunkCar: Car {
    let usingFuel: Fuel
    let sportCarColor: Color
    let doorsAmount: Doors
    let passengersCapacity: Passengers
    let ignition: EngineStatus
    let windows: WindowState
    let fuelTrank: TrunkState
}
var maxTrunckVolume: Int
var trunkForm: String
var cabin: String


