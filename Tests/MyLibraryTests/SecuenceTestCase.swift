import XCTest
import MyLibrary

final class SecuenceTestCase: XCTestCase {
    func testSum(){
        let threeTwoOne = stride(from: 3, through: 1, by: -1)
        XCTAssertEqual(threeTwoOne.suma, 6)
        XCTAssertEqual([0.5,1.0,1.5].suma, 3)
    }
    
    func testSumBad(){
        let threeTwoOne = stride(from: 3, through: 1, by: -1)
        XCTAssertNotEqual(threeTwoOne.suma, 9)
        XCTAssertNotEqual([0.5,1.0,1.5].suma, 4)
        XCTAssertNil(Array<Int>().suma)
    }
}
