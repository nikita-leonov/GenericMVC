//
//  PalletViewController.swift
//  ViewController
//
//  Created by Nikita Leonov on 6/24/17.
//  Copyright © 2017 Nikita Leonov. All rights reserved.
//

import UIKit
import GenericMVC

class PalletViewController: ViewController<ColorModel> {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        model = ColorModel()
    }

    override func prepare<Source, Destination>(segueId: String, source: Source, destination: Destination) where Source: ModelContainerProtocol, Destination: MutableModelContainerProtocol {
        if var sourceModel = source.model as? ColorModel, let targetContainer = destination as? ViewController<ColorModel> {
            switch(segueId) {
            case "red":
                sourceModel.selectedColor = UIColor.red
            case "blue":
                sourceModel.selectedColor = UIColor.blue
            case "green":
                sourceModel.selectedColor = UIColor.green
            default:
                break
            }
            targetContainer.model = sourceModel
        }
    }
}
