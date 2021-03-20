//
//  NibLoadable.swift
//  Component
//
//  Created by Takuma Osada on 2021/03/20.
//

import UIKit
import Carbon

public protocol NibLoadable: AnyObject {
    static var nibName: String { get }
    static var nibBundle: Bundle? { get }
}

public extension NibLoadable {
    static var nib: UINib {
        UINib(nibName: nibName, bundle: nibBundle)
    }

    static var nibName: String {
        String(describing: self)
    }

    static var nibBundle: Bundle? {
        Bundle(for: self)
    }
}

public extension NibLoadable where Self: UIView {
    static func loadFromNib() -> Self {
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? Self else {
            fatalError("")
        }
        return view
    }
}

extension Component where Content: UIView & NibLoadable {
    public func renderContent() -> Content {
        .loadFromNib()
    }
}
