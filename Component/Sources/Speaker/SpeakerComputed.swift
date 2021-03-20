//
//  SpeakerComputed.swift
//  Component
//
//  Created by Takuma Osada on 2021/03/20.
//

import ReactiveSwift

public protocol SpeakerComputed {
    var dataState: Property<SpeakerDataComposer.State> { get }
}
