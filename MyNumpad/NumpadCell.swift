//
//  NumpadCell.swift
//  MyNumpad
//
//  Created by Jinwoo Kim on 26/03/2019.
//  Copyright © 2019 jinuman. All rights reserved.
//

import UIKit

class NumpadCell: UICollectionViewCell {
    
    let digitsLabel: UILabel = {
        let label = UILabel()
        label.font = UIDevice.current.screenType == .iPhones_5_5s_5c_SE
            ? UIFont.systemFont(ofSize: 24)
            : UIFont.systemFont(ofSize: 32)
        label.numberOfLines = 1
        label.textAlignment = .center
        return label
    }()
    
    let lettersLabel: UILabel = {
        let label = UILabel()
        label.font = UIDevice.current.screenType == .iPhones_5_5s_5c_SE
            ? UIFont.boldSystemFont(ofSize: 8)
            : UIFont.boldSystemFont(ofSize: 10)
        label.textAlignment = .center
        label.numberOfLines = 1
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(white: 0.9, alpha: 1)
        
        let stackView = UIStackView(arrangedSubviews: [digitsLabel, lettersLabel])
        stackView.axis = .vertical
        
        addSubview(stackView)
        stackView.centerInSuperview()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = self.frame.width / 2
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
