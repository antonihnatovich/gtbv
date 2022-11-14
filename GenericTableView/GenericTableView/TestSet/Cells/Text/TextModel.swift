//
//  TextModel.swift
//  GenericTableView
//
//  Created by Антон on 13/11/2022.
//

import Foundation

struct TextModel: BindableRowModel {
    let text: String
    
    func bind(_ cell: TextTableViewCell) {
        cell.mapModel(self)
    }
}
