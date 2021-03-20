//
//  SpeakerAdapter.swift
//  CASwiftSample
//
//  Created by Takuma Osada on 2021/03/20.
//

import Component
import VueFlux

final class SpeakerAdapter: SpeakerAdapterProtocol {
    var computed: SpeakerComputed {
        store.computed
    }

    var dataComposer: SpeakerDataComposer {
        SpeakerDataComposer()
    }

    private let store = Store<SpeakerState>(state: .init(), mutations: .init(), executor: .mainThread)
}
