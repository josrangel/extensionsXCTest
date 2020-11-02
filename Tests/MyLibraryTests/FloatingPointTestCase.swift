import XCTest

final class FloatingPointTestCase: XCTestCase {
    func testIsInteger(){
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        //given
        
        //when
        
        //then
     
        XCTAssert(1.0.isInteger)
        XCTAssertFalse( (1.1 as CGFloat).isInteger)
        //para verificar un valor
        //XCTAssertEqual(Bool(bit: 1), true)
    }
    
}
