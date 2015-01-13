// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

enum PVMapOption:Int {
    case PVMapBoundary = 1
    case PVMapOverlay, PVMapPins, PVMapCharacterLocation, PVMapRoute
}
var selectedRow = PVMapOption(rawValue: 2)

PVMapOption.PVMapOverlay == selectedRow
