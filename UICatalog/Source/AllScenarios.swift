//
//  AllScenarios.swift
//  UICatalog
//
//  Created by Takuma Osada on 2021/03/20.
//

import Playbook

struct AllScenarios: ScenarioProvider {
    static func addScenarios(into playbook: Playbook) {
        playbook
            .add(SpeakerScenario.self)
    }
}
