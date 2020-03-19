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
        $0.lineBreakMode = .byWordWrapping
        $0.adjustsFontSizeToFitWidth = true
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
        
        guard let _maxWidth = maxWidth else { return }
        
        self.testLbl.preferredMaxLayoutWidth = _maxWidth
        print("PARK TEST \(_maxWidth)")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentView.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.snp.makeConstraints{
            $0.edges.equalTo(safeAreaLayoutGuide.snp.edges)
        }
        
        print("PARK TEST contentView width : \(contentView.frame.width)")
        
        self.contentView.addSubview(self.testLbl)
        self.testLbl.snp.makeConstraints{
            $0.top.bottom.equalToSuperview()
            $0.centerY.equalToSuperview()
        }
        
        print("PARK TEST testLbl width : \(testLbl.frame.width)")
    }
    
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        let size = contentView.systemLayoutSizeFitting(layoutAttributes.size)
        var frame = layoutAttributes.frame
        frame.size.width = UIScreen.main.bounds.width
        frame.size.height = size.height
        layoutAttributes.frame = frame
        
        return layoutAttributes
    }
}
