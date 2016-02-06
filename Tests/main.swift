import XCTest

let cpu = CPU()

// Make sure all the registers are initialized to zero
XCAssert(cpu.pc, 0)
XCAssert(cpu.sp, 0)
XCAssert(cpu.a,  0)
XCAssert(cpu.x,  0)
XCAssert(cpu.y,  0)
XCAssert(cpu.p,  0)

// Make sure the memory is big enough
XCAssert(cpu.memory.count, 64_000)