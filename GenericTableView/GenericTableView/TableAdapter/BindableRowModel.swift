//
//  BindableRowModel.swift
//  GenericTableView
//
//  Created by Антон on 13/11/2022.
//

import Foundation
import UIKit

protocol BindableRowModel: Bindable {
    associatedtype CellType: UITableViewCell
    
    func bind(_ cell: CellType)
}

extension BindableRowModel {
    func dequeCell(_ tableView: UITableView, _ indexPath: IndexPath) -> UITableViewCell {
        tableView.register(CellType.self, forCellReuseIdentifier: reuseIdentifier) // TODO solve need to all time register it
        return tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
    }
    
    func configure(_ cell: UITableViewCell) {
        guard let castedCell = cell as? CellType else { return }
        bind(castedCell)
    }
}
