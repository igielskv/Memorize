//
//  Array+Only.swift
//  Memorize
//
//  Created by Manoli on 11/07/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
