//
//  mealtrackerTests.swift
//  mealtrackerTests
//
//  Created by SIMRANPREET KAUR on 25/10/17.
//  Copyright © 2017 SIMRANPREET KAUR. All rights reserved.
//

import XCTest
@testable import mealtracker

class mealtrackerTests: XCTestCase {
    
    func testMealInitializationSucceeds()
    {
        let zeroRatingMeal = Meal.init(name: "Zero",photo: nil,rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        let possitiveRatingMeal = Meal.init(name: "Possitive", photo: nil, rating: 5)
        XCTAssertNotNil(possitiveRatingMeal)
    }
    func testMealInitializtionFails()
    {
        let negativeRatingMeal = Meal.init(name: "Negative",photo: nil,rating: -1)
        XCTAssertNil(negativeRatingMeal)
        let emptyRatingMeal = Meal.init(name: "",photo: nil,rating: 0)
        XCTAssertNil(emptyRatingMeal)
        let largeRatingMeal = Meal.init(name: "Large",photo: nil,rating: -6)
        XCTAssertNil(largeRatingMeal)
        
    }
}
