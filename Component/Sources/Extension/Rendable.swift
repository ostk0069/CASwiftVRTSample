//
//  Rendable.swift
//  Component
//
//  Created by Takuma Osada on 2021/03/20.
//

import Carbon
import ReactiveSwift
import ReactiveCocoa
import UIKit

public protocol Rendable: AnyObject {
    associatedtype Component

    func render(with component: Component)
}

public extension Reactive where Base: Rendable {
    var render: BindingTarget<Base.Component> {
        makeBindingTarget { base, component in
            base.render(with: component)
        }
    }
}

public extension Component where Content: Rendable, Content.Component == Self {
    func render(in content: Content) {
        content.render(with: self)
    }
}

public extension Component where Content: Rendable, Content.Component: OptionalProtocol, Content.Component.Wrapped == Self {
    func render(in content: Content) {
        content.render(with: Content.Component(reconstructing: self))
    }
}
