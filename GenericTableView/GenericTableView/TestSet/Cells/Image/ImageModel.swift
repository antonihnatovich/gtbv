//
//  ImageModel.swift
//  GenericTableView
//
//  Created by Антон on 13/11/2022.
//

import Foundation

struct ImageModel: BindableRowModel {
    let text: String
    
    func bind(_ cell: ImageTableViewCell) {
        cell.mapModel(self)
    }
}
