//
//  Utility.swift
//  Demo
//
//  Created by John Lima on 1/22/21.
//

import UIKit
/// This is a class to contain utility methods
class Utility:NSObject {
    /// This is an **awesome** documentation line for a really *useful* variable.
    var someVar = "This is a variable"

    /**
     This function calculates the sum of two numbers
     ## Important Notes ##
     1. Both parameters are **Integer** numbers.
     - parameters:
     - a: Integer one
     - b: Integer two
     - returns: Added sum of two integers
     */
    func plus(a: Int, b: Int) ->Int {
        return a + b
    }

    /**
     This function calculates the minus of two numbers
     ## Important Notes ##
     1. Both parameters are **Integer** numbers.
     - parameters:
     - a: Integer one
     - b: Integer two
     - returns: Added minus of two integers
     */
    func minus(a: Int, b: Int) ->Int {
        return a - b
    }

    /**
     It calculates and returns the outcome of the division of the two parameters.

     ## Important Notes ##
     1. Both parameters are **double** numbers.
     2. For a proper result the second parameter *must be other than 0*.
     3. If the second parameter is 0 then the function will return nil.

     */
    func performDivision(number1: Double, number2: Double) -> Double! {
        if number2 != 0 {
            return number1 / number2
        }
        else {
            return nil
        }
    }

    /**
     It doubles the value given as a parameter.

     ### Usage Example: ###
     ````
     let single = 5
     let double = doubleValue(single)
     print(double)
     ````

     * Use the `doubleValue(_:)` function to get the double value of any number.
     * Only ***Int*** properties are allowed.
     */
    func doubleValue(value: Int) -> Int {
        return value * 2
    }

    /**
     My own alignment options.

     ````
     case Left
     case Center
     case Right
     ````
     */
    enum AlignmentOptions {
        /// It aligns the text on the Left side.
        case Left

        /// It aligns the text on the Center.
        case Center

        /// It aligns the text on the Right side.
        case Right
    }


    func doSomething() {
        let alignmentOption: AlignmentOptions!

        alignmentOption = AlignmentOptions.Left
    }

    /**
     This is an extremely complicated method that concatenates the first and last name and produces the full name.

     - Parameter firstname: The first part of the full name.
     - Parameter lastname: The last part of the fullname.
     - Returns: The full name as a string value.
     */
    func createFullName(firstname: String, lastname: String) -> String {
        return "\(firstname) \(lastname)"
    }

    /**
     Another complicated function.

     - Parameter fullname: The fullname that will be broken into its parts.
     - Returns: A *tuple* with the first and last name.

     - Remark:
     There's a counterpart function that concatenates the first and last name into a full name.

     - SeeAlso:  `createFullName(_:lastname:)`

     */
    func breakFullName(fullname: String) -> (firstname: String, lastname: String) {
        let fullnameInPieces = fullname.components(separatedBy: " ")
        return (fullnameInPieces[0], fullnameInPieces[1])
    }
}
