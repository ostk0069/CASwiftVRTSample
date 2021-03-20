//
//  SpeakerAdapterMock.swift
//  Mock
//
//  Created by Takuma Osada on 2021/03/20.
//

import Component
import ReactiveSwift

public final class SpeakerComputedMock: SpeakerComputed {
    public var dataState: Property<SpeakerDataComposer.State>

    public init(
        dataState: SpeakerDataComposer.State
    ) {
        self.dataState = Property(value: dataState)
    }
}

public final class SpeakerAdapterMock: SpeakerAdapterProtocol {
    public var computed: SpeakerComputed

    public var dataComposer: SpeakerDataComposer {
        SpeakerDataComposer()
    }

    public init(
        computed: SpeakerComputed
    ) {
        self.computed = computed
    }
}
