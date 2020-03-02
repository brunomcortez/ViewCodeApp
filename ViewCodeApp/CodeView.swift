//
//  CodeView.swift
//  ViewCodeApp
//
//  Created by Bruno Cortez on 2/28/20.
//  Copyright © 2020 Bruno Cortez. All rights reserved.
//

import Foundation

protocol CodeView {
    func setupComponents()
    func setupConstraints()
    func setupExtraConfiguration()
    func setup()
}

extension CodeView {
    func setup() {
        setupComponents()
        setupConstraints()
        setupExtraConfiguration()
    }
}
