//
//  SpeakerView.swift
//  Component
//
//  Created by Takuma Osada on 2021/03/20.
//

import Carbon
import UIKit

public struct SpeakerComponent: IdentifiableComponent {
    var speaker: Speaker

    public var id: String {
        speaker.name
    }

    public init(
        speaker: Speaker
    ) {
        self.speaker = speaker
    }

    public func referenceSize(in bounds: CGRect) -> CGSize? {
        CGSize(width: bounds.width, height: 44)
    }

    public func shouldRender(next: SpeakerComponent, in content: SpeakerView) -> Bool {
        false
    }
}

public final class SpeakerView: UIView, NibLoadable, Rendable {
    @IBOutlet weak var titleLabel: UILabel!

    public func render(with component: SpeakerComponent) {
        titleLabel.text = component.speaker.name
    }
}
