//
//  SpeakerScenario.swift
//  UICatalog
//
//  Created by Takuma Osada on 2021/03/20.
//

import Component
import Mock
import Playbook

struct SpeakerScenario: ScenarioProvider {
    static func addScenarios(into playbook: Playbook) {
        playbook.addScenarios(of: "Speaker") {
            Scenario("SpeakerComponent", layout: .fill) {
                let speaker = Speaker(
                    name: "name 1",
                    title: "title 1",
                    imageURL: ""
                )
                let component = SpeakerComponent(speaker: speaker)
                let view = SpeakerView.loadFromNib()
                view.render(with: component)
                return view
            }

            Scenario("SpeakerViewController empty", layout: .fill) {
                let dataState = SpeakerDataComposer.State(speakers: [])
                let computed = SpeakerComputedMock(dataState: dataState)
                let adapter = SpeakerAdapterMock(computed: computed)
                return SpeakerViewController(adapter: adapter)
            }

            Scenario("SpeakerViewController empty", layout: .fill) {
                let speakers = [
                    Speaker(
                        name: "name 1",
                        title: "title 1",
                        imageURL: ""
                    ),
                    Speaker(
                        name: "name 2",
                        title: "title 2",
                        imageURL: ""
                    ),
                    Speaker(
                        name: "name 3",
                        title: "title 3",
                        imageURL: ""
                    ),
                ]
                let dataState = SpeakerDataComposer.State(speakers: speakers)
                let computed = SpeakerComputedMock(dataState: dataState)
                let adapter = SpeakerAdapterMock(computed: computed)
                return SpeakerViewController(adapter: adapter)
            }
        }
    }
}
