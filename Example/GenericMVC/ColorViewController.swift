//
//  ColorViewController.swift
//  ViewController
//
//  Created by Nikita Leonov on 6/24/17.
//  Copyright © 2017 Nikita Leonov. All rights reserved.
//

import GenericMVC

class ColorViewController: ViewController<ColorModel> {
    override func viewWillAppear(_ animated: Bool) {
        if let backgroundColor = model.selectedColor {
            view.backgroundColor = backgroundColor
        }
    }
}
