//
//  Property+.swift
//  Component
//
//  Created by Takuma Osada on 2021/03/20.
//

import ReactiveSwift

public extension PropertyProtocol {
    var property: Property<Value> {
        Property(self)
    }
}
