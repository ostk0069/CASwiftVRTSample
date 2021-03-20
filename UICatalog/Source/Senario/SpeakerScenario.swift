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
            Scenario("SpeakerViewController empty", layout: .fill) {
                let dataState = SpeakerDataComposer.State(speakers: [])
                let computed = SpeakerComputedMock(dataState: dataState)
                let adapter = SpeakerAdapterMock(computed: computed)
                return SpeakerViewController(adapter: adapter)
            }
        }
    }
}
