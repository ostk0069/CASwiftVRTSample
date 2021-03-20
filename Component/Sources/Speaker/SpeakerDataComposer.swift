//
//  SpeakerDataComposer.swift
//  Component
//
//  Created by Takuma Osada on 2021/03/20.
//

import Carbon
import VueFlux

public struct SpeakerDataComposer {
    public struct State {
        public var speakers: [Speaker]

        public init(
            speakers: [Speaker] = []
        ) {
            self.speakers = speakers
        }
    }

    public init() {}

    enum SectionID {
        case speaker
    }

    func compose(state: State) -> Group<Section> {
        Group {
            Section(
                id: SectionID.speaker,
                cells: {
                    Group(of: state.speakers) { speaker in
                        SpeakerComponent(speaker: speaker)
                    }
                }
            )
        }
    }
}
