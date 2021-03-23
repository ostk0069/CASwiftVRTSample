//
//  Token.swift
//  Component
//
//  Created by 長田 卓馬 on 2021/03/23.
//

public extension Bundle {
    private final class Token {}

    static var component: Bundle {
        Bundle(for: Token.self)
    }
}
