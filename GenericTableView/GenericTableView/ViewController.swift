//
//  ViewController.swift
//  GenericTableView
//
//  Created by Антон on 13/11/2022.
//

import UIKit

final class ViewController: UIViewController {
    private lazy var tableView: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()
    
    private lazy var tableAdapter: GenericAdapter = GenericAdapter(sections)
    
    private let sections: [Section] = [
        Section(rows: [
            TextModel(text: "1 s 1 r"),
            TextModel(text: "1 s 2 r"),
            ImageModel(text: "1s 3 r")
        ])
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.delegate = tableAdapter
        tableView.dataSource = tableAdapter
    }
}

