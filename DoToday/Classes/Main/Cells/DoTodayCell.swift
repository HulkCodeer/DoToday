//
//  DoTodayCell.swift
//  DoToday
//
//  Created by 박현진 on 2020/03/18.
//  Copyright © 2020 박현진. All rights reserved.
//

import UIKit

internal final class DoTodayCell: UICollectionViewCell {
    
    var maxWidth: CGFloat? = nil
    
    internal lazy var testLbl = UILabel().then {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textColor = .black
        $0.numberOfLines = 10
        $0.lineBreakMode = .byTruncatingTail
    }
        
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        self.contentView.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.testLbl)
        self.testLbl.snp.makeConstraints{
            $0.edges.equalTo(safeAreaLayoutGuide.snp.edges)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentView.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.testLbl)
        self.testLbl.snp.makeConstraints{
            $0.edges.equalTo(safeAreaLayoutGuide.snp.edges)
        }
    }
}
