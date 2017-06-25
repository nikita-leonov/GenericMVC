//
//  ViewController.swift
//  GenericMVC
//
//  Created by Nikita Leonov on 6/24/17.
//  Copyright © 2017 Nikita Leonov. All rights reserved.
//

import UIKit

public protocol AnySegueable {
    func prepare<Source, Destination>(segueId: String, source: Source, destination: Destination) where Source: ModelContainerProtocol, Destination: MutableModelContainerProtocol
    func dispatchPrepare(segueId: String, destination: AnySegueable)
    func dispatchPrepare<Other>(segueId: String, source: Other) where Other: AnySegueable & ModelContainerProtocol
}

public protocol Segueable: AnySegueable, MutableModelContainerProtocol {}

extension Segueable {
    public func dispatchPrepare(segueId: String, destination: AnySegueable) {
        destination.dispatchPrepare(segueId: segueId, source: self)
    }
    
    public func dispatchPrepare<Other>(segueId: String, source: Other) where Other: AnySegueable & ModelContainerProtocol {
        source.prepare(segueId: segueId, source: source, destination: self)
    }
}

open class ViewController<Model: ModelProtocol>: UIViewController, Segueable {
    public var model: Model!
    
    open func prepare<Source, Destination>(segueId: String, source: Source, destination: Destination) where Source: ModelContainerProtocol, Destination: MutableModelContainerProtocol {}
    
    public override final func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let segueId = segue.identifier, let source = segue.source as? AnySegueable, let destination = segue.destination as? AnySegueable else {
            return
        }
        source.dispatchPrepare(segueId: segueId, destination: destination)
    }
}
