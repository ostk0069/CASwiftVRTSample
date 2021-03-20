//
//  SpeakerAdapterProtocol.swift
//  Component
//
//  Created by Takuma Osada on 2021/03/20.
//

public protocol SpeakerAdapterProtocol {
    var computed: SpeakerComputed { get }
    var dataComposer: SpeakerDataComposer { get }

    func sendSomething()
}
