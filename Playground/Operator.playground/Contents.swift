import Foundation

// 이진수에 대한 상수 정의
let zero: Int = 0b000
let one: Int = 0b001
let two: Int = 0b010
let three: Int = 0b011
let four: Int = 0b100
let five: Int = 0b101
let six: Int = 0b110
let seven: Int = 0b111

// 다른 비트 값을 이용해 옵션을 생성
/*
let phone: Int        = 0b00000001
let tablet: Int       = 0b00000010
let watch: Int        = 0b00000100
let laptop: Int       = 0b00001000
let desktop: Int      = 0b00010000
let tv: Int           = 0b00100000
let brainImplant: Int = 0b01000000
 */

let phone: Int        = 1 << 0
let tablet: Int       = 1 << 1
let watch: Int        = 1 << 2
let laptop: Int       = 1 << 3
let desktop: Int      = 1 << 4
let tv: Int           = 1 << 5
let brainImplant: Int = 1 << 6

var supportedDevices: Int = phone + tablet + tv

//   0 0 0 1 0 0 1 1 = supportedDevices
// & 0 0 0 0 0 0 1 0 = tablet (device)
// ------------------
//   0 0 0 0 0 0 1 0 = device

@MainActor
func isSupported(device: Int) -> Bool {
    let bitwiseAnd: Int = supportedDevices & device
    let containsDevice = bitwiseAnd == device
    return containsDevice
}

// phone + tablet + tv calculation:
//   0 0 0 1 0 0 1 0 = phone
// + 0 0 0 0 0 0 1 0 = tablet
// + 0 0 0 0 0 1 0 0 = tv
// ------------------
//   0 0 0 1 0 1 1 0 = deviceThatSupportUIKit
let deviceThatSupportUIKit = phone + tablet + tv

// desktop + tv calculation:
//   0 0 0 0 1 0 0 0 = desktop
// + 0 0 0 0 0 1 0 0 = tv
// ------------------
//   0 0 0 0 1 1 0 0 = stationaryDevice
let stationaryDevice = desktop + tv

// deviceThatSupportUIKit | stationaryDevice calculation:
//   0 0 0 1 0 1 1 0 = deviceThatSupportUIKit
// | 0 0 0 0 1 1 0 0 = stationaryDevice
// ------------------
//   0 0 0 1 1 1 1 0 = stationaryOrUIKietDevices
let stationaryOrUIKitDevice = deviceThatSupportUIKit | stationaryDevice

// Verification of union operation:
//   0 0 0 1 1 1 1 0 = stationaryOrUIKietDevices
// = 0 0 0 1 1 1 1 0 = (phone + tablet + tv + desktop)
// ------------------
//   true              = orIsUnion
let orIsUnion = stationaryOrUIKitDevice == (phone + tablet + tv + desktop)
print(orIsUnion)
