//
//  Bindable.swift
//  GenericTableView
//
//  Created by Антон on 13/11/2022.
//

import Foundation
import UIKit

protocol Bindable {
    var reuseIdentifier: String { get }
    var height: CGFloat { get }
    
    func dequeCell(_ tableView: UITableView, _ indexPath: IndexPath) -> UITableViewCell
    func configure(_ cell: UITableViewCell)
}

extension Bindable {
    var reuseIdentifier: String {
        return String(describing: type(of: self))
    }
    
    var height: CGFloat {
        return UITableView.automaticDimension
    }
}
