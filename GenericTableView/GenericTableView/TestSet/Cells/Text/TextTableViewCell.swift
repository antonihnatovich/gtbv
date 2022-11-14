//
//  TextTableViewCell.swift
//  GenericTableView
//
//  Created by Антон on 13/11/2022.
//

import UIKit

final class TextTableViewCell: UITableViewCell {
    private lazy var titleLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.boldSystemFont(ofSize: 16)
        lbl.textColor = .blue
        return lbl
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        baseSetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        baseSetup()
    }
    
    func mapModel(_ model: TextModel) {
        contentView.backgroundColor = .yellow
        titleLabel.text = model.text
    }
    
    private func baseSetup() {
        contentView.addSubview(titleLabel)
        titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
    }
}
