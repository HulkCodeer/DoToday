//
//  ViewController.swift
//  DoToday
//
//  Created by 박현진 on 2020/03/08.
//  Copyright © 2020 박현진. All rights reserved.
//

import UIKit

class MainViewController: CommonViewController {
        
    private lazy var testLbl = UILabel().then {
        $0.text = "하이"
    }
    
    private lazy var doTodayTableView = UITableView().then {
        $0.separatorStyle = .singleLine
        $0.estimatedRowHeight = 200
        $0.rowHeight = UITableView.automaticDimension
        $0.delegate = self
        $0.dataSource = self
    }
    
    override func loadView() {
        super.loadView()
        
        contentView.addSubview(self.doTodayTableView)
        self.doTodayTableView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
                
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}


