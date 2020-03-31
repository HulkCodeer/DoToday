//
//  InsertViewController.swift
//  DoToday
//
//  Created by 박현진 on 2020/03/29.
//  Copyright © 2020 박현진. All rights reserved.
//

import UIKit

internal final class InsertViewController: CommonViewController {
    
    private lazy var naviTotalView = UIView().then{
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .white
    }
    
    private lazy var naviTitleView = UILabel().then {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "아이템추가"
    }
    
    override func loadView() {
        super.loadView()
        
        self.contentView.addSubview(naviTotalView)
        naviTotalView.snp.makeConstraints{
            $0.leading.top.trailing.equalToSuperview()
            $0.height.equalTo(55)
        }
        
        naviTotalView.addSubview(naviTitleView)
        naviTitleView.snp.makeConstraints{
            $0.center.equalToSuperview()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
