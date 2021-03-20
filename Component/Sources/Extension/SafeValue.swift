//
//  SafeValue.swift
//  Component
//
//  Created by Takuma Osada on 2021/03/20.
//

public protocol TypeSafeProtocol {
    associatedtype Associated
    associatedtype Value

    var value: Value { get }
}

/// Inspired by swift-tagged
/// - SeeAlso: [swift-tagged](https://github.com/pointfreeco/swift-tagged)
public struct SafeValue<Associated, Value>: TypeSafeProtocol {
    public var value: Value

    public init(value: Value) {
        self.value = value
    }
}

extension SafeValue: Equatable where Value: Equatable {}

extension SafeValue: Hashable where Value: Hashable {}

extension SafeValue: Codable where Value: Codable {}

extension SafeValue: Comparable where Value: Comparable {
    public static func < (lhs: SafeValue, rhs: SafeValue) -> Bool {
        lhs.value < rhs.value
    }
}
