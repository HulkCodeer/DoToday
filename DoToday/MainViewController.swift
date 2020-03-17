//
//  ViewController.swift
//  DoToday
//
//  Created by 박현진 on 2020/03/08.
//  Copyright © 2020 박현진. All rights reserved.
//

import UIKit

class MainViewController: CommonViewController, Storyboarded {
    
    // 공지사항 가로 컬렉션뷰
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.estimatedItemSize = CGSize(width: 320, height: 20)
        if #available(iOS 11.0, *) {
            layout.sectionInsetReference = .fromSafeArea
        }
        
        layout.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.translatesAutoresizingMaskIntoConstraints = false

        if #available(iOS 11.0, *) {
            view.contentInsetAdjustmentBehavior = .automatic
        }
        view.contentInset = UIEdgeInsets.zero
        view.backgroundColor = UIColor.white
        view.dataSource = self
        view.delegate = self
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(self.collectionView)
        self.collectionView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
        
        // Do any additional setup after loading the view.
    }
}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
}

