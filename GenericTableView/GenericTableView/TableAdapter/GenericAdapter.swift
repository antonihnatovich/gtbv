//
//  GenericAdapter.swift
//  GenericTableView
//
//  Created by Антон on 13/11/2022.
//

import Foundation
import UIKit

final class GenericAdapter: NSObject {
    private var sections: [Section] = []
    
    init(_ sections: [Section]) {
        self.sections = sections
    }
    
    func bindableModel(at indexPath: IndexPath) -> Bindable {
        return sections[indexPath.section].rows[indexPath.row]
    }
}

extension GenericAdapter: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return bindableModel(at: indexPath).height
    }
}

extension GenericAdapter: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].rows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return bindableModel(at: indexPath).dequeCell(tableView, indexPath)
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        return bindableModel(at: indexPath).configure(cell)
    }
}
