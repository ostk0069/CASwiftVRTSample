//
//  Speaker.swift
//  Component
//
//  Created by Takuma Osada on 2021/03/20.
//

public struct Speaker {    
    var name: String
    var title: String
    var imageURL: String

    public init(
        name: String,
        title: String,
        imageURL: String
    ) {
        self.name = name
        self.title = title
        self.imageURL = imageURL
    }
}
