struct CPU {
  var pc: UInt16 = 0
  var sp: UInt8 = 0
  var a: UInt8 = 0
  var x: UInt8 = 0
  var y: UInt8 = 0
  var p: UInt8 = 0b00100000
                 // p status register, layout as follows:
                 // N V _ B D I Z C

  var memory = [UInt16].init(count: 64_000, repeatedValue: 0)
}

let cpu = CPU()

print(cpu.p)
