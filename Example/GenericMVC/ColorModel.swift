//
//  ColorModel.swift
//  ViewController
//
//  Created by Nikita Leonov on 6/24/17.
//  Copyright © 2017 Nikita Leonov. All rights reserved.
//

import UIKit
import GenericMVC

protocol ColorSelectable {
    var selectedColor: UIColor? { get }
}

struct ColorModel: ModelProtocol, ColorSelectable {
    var selectedColor: UIColor?
}
