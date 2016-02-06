import XCTest

let cpu = CPU()

// Make sure all the registers are initialized to zero
XCAssert(cpu.pc, 0)
XCAssert(cpu.sp, 0)
XCAssert(cpu.a,  0)
XCAssert(cpu.x,  0)
XCAssert(cpu.y,  0)
XCAssert(cpu.p,  0b00100000)

// Make sure the memory is big enough
XCAssert(cpu.memory.count, 64_000)


// Instruciton tests
// AND instruction
XCAssert(cpu.and(1, 0), 0)

XCAssert(cpu.and(0, 0), 0)
XCAssert(cpu.p, 0b00100010)

XCAssert(cpu.and(1, 1), 1)
XCAssert(cpu.p, 0b00100000)
