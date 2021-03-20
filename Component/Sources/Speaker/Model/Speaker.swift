//
//  Speaker.swift
//  Component
//
//  Created by Takuma Osada on 2021/03/20.
//

public struct Speaker {
    public typealias ID = SafeValue<Speaker, String>

    var id: ID
    
    var name: String
    var title: String
    var imageURL: String
}
