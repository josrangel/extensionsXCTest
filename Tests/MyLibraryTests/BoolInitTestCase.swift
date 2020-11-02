import XCTest
import MyLibrary

final class BoolInitTestCase: XCTestCase {
    func testValidBits() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        //given
        
        //when
        
        //then
        /*if Bool(bit: 1) == false{
            XCTFail()
        }*/
        
        if let boolFromTrueBit = Bool(bit: 1){
            XCTAssertTrue(boolFromTrueBit)
        }else{
            XCTFail()
        }
        
        let boolFromFalseBit = try XCTUnwrap( Bool(bit: 0))
        XCTAssertFalse(boolFromFalseBit)
        //para verificar un valor
        //XCTAssertEqual(Bool(bit: 1), true)
    }
    
    func testInvalidBits() {
        XCTAssertNil( Bool(bit: -1))
        XCTAssertNil( Bool(bit: 2))
    }
    
    func testEvaluacionPrueba(){
        if(1 == 1){
            //para forzar un error
            //XCTFail("Si, 1 es igual a 1...pero no")
        }
    }
    
    func testDataByte() throws {
        let data = Data(0...2)
        
        let falseByte = data[0]
        let trueByte = data[1]
        let invalidByte = data[2]
        
        let boolFromFalseBit = try XCTUnwrap( Bool(bit: falseByte))
        XCTAssertFalse(boolFromFalseBit)
        
        let boolFromTrueBit = try XCTUnwrap( Bool(bit: trueByte))
        XCTAssertTrue(boolFromTrueBit)
        
        XCTAssertNil(Bool(bit: invalidByte))
    }
    
}
