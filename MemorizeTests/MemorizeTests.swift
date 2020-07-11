//
//  MemorizeTests.swift
//  MemorizeTests
//
//  Created by Manoli on 10/07/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import XCTest

class MemorizeTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testEmojiMemoryGame() {
        var previousGame = EmojiMemoryGame()
        
        for _ in 1 ... 100 {
            let newGame = EmojiMemoryGame()
            XCTAssertGreaterThanOrEqual(newGame.cards.count, 4, "Random number of pairs is less than 2")
            XCTAssertLessThanOrEqual(newGame.cards.count, 10, "Random number of pairs is more than 5")
            XCTAssertNotEqual(newGame.cards.description, previousGame.cards.description, "Two consequent card sets are same")
            previousGame = newGame
        }
    }
}
