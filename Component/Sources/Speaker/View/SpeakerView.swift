//
//  SpeakerView.swift
//  Component
//
//  Created by Takuma Osada on 2021/03/20.
//

import Carbon
import UIKit

struct SpeakerComponent: IdentifiableComponent {
    var speaker: Speaker

    var id: String {
        speaker.name
    }

    func referenceSize(in bounds: CGRect) -> CGSize? {
        CGSize(width: bounds.width, height: 80)
    }

    func shouldRender(next: SpeakerComponent, in content: SpeakerView) -> Bool {
        false
    }
}

final class SpeakerView: UIView, NibLoadable, Rendable {
    typealias Component = SpeakerComponent

    func render(with component: SpeakerComponent) {
    }
}
