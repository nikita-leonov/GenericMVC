//
//  Model.swift
//  GenericMVC
//
//  Created by Nikita Leonov on 6/24/17.
//  Copyright © 2017 Nikita Leonov. All rights reserved.
//

public protocol ModelProtocol {}

public protocol ModelContainerProtocol {
    associatedtype Model: ModelProtocol
    var model: Model! { get }
}

public protocol MutableModelContainerProtocol: ModelContainerProtocol {
    var model: Model! { get set }
}
