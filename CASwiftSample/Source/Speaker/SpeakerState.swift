//
//  SpeakerState.swift
//  CASwiftSample
//
//  Created by Takuma Osada on 2021/03/20.
//

import ReactiveSwift
import UIKit
import VueFlux
import Component

extension Computed: SpeakerComputed where State == SpeakerState {
    public var dataState: Property<SpeakerDataComposer.State> {
        state.dataState.property
    }

    public var someEvent: Signal<Void, Never> {
        state.someEvent.output
    }
}

public final class SpeakerState: State {
    public typealias Mutations = SpeakerMutations

    public enum Action {
        case doSomething
    }

    fileprivate let dataState = MutableProperty(SpeakerDataComposer.State())
    fileprivate let someEvent = Signal<Void, Never>.pipe()
}

// MARK: Mutations

public struct SpeakerMutations: Mutations {
    public func commit(action: SpeakerState.Action, state: SpeakerState) {
        switch action {
        case .doSomething:
            state.someEvent.input.send(value: ())
        }
    }
}
