//
//  ViewController.swift
//  DoToday
//
//  Created by 박현진 on 2020/03/08.
//  Copyright © 2020 박현진. All rights reserved.
//

import UIKit

private enum DoTodayCellConfiguration {
    static let spacing: CGFloat = 15
    static let borderWidth: CGFloat = 0.5
    static let reuseId = "DoTodayCell"
}

class MainViewController: CommonViewController, Storyboarded {
    
    let data = ["asdfasdfasdfasdfasdfasdfasdfasdf","asdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdf","pawerlwepawerlwepawerlwepawerlwepawerlwepawerlwepawerlwepawerlwepawerlwe"]
    
    // 공지사항 가로 컬렉션뷰
    private lazy var doTodayCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        if #available(iOS 11.0, *) {
            layout.sectionInsetReference = .fromSafeArea
        }
        layout.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentInset = UIEdgeInsets.zero
        view.backgroundColor = UIColor.white
        view.dataSource = self
        view.delegate = self
        return view
    }()
    
    private lazy var testLbl = UILabel().then {
        $0.text = "하이"
    }
    
    override func loadView() {
        super.loadView()
        
        self.view.addSubview(self.doTodayCollectionView)
        self.doTodayCollectionView.snp.makeConstraints{
            $0.edges.equalTo(self.view.safeAreaLayoutGuide.snp.edges)
        }
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()

        self.doTodayCollectionView.register(DoTodayCell.self, forCellWithReuseIdentifier: "DoTodayCell")
    }
}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DoTodayCellConfiguration.reuseId, for: indexPath) as! DoTodayCell
        
        cell.testLbl.text = data[indexPath.row]
        cell.layer.borderWidth = DoTodayCellConfiguration.borderWidth
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.maxWidth = collectionView.bounds.width - DoTodayCellConfiguration.spacing
        
        return cell
    }
}

