//
//  DoTodayCell.swift
//  DoToday
//
//  Created by 박현진 on 2020/03/18.
//  Copyright © 2020 박현진. All rights reserved.
//

import UIKit

internal final class DoTodayCell: UICollectionViewCell {
    
    static let reueseId = "DoTodayCell"
    
    internal lazy var mainLbl = UILabel().then {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textColor = .black
        $0.numberOfLines = 1
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.makeUI()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.makeUI()
    }
    
    func makeUI() {
        self.contentView.addSubview(self.mainLbl)
        self.mainLbl.snp.makeConstraints{
            $0.leading.top.trailing.equalToSuperview()
            $0.height.equalTo(100)
        }
    }
    
    func bind(data: String) {
        self.mainLbl.text = data
    }
}
