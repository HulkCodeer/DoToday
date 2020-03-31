//
//  CommonViewController.swift
//  DoToday
//
//  Created by 박현진 on 2020/03/15.
//  Copyright © 2020 박현진. All rights reserved.
//

import UIKit
import Then
import SnapKit
import RxSwift
import RxCocoa

internal class CommonViewController: UIViewController{
    weak var coordinator: AppCoordinator?
    
    private var disposeBag = DisposeBag()
    
    internal lazy var contentView = UIView().then{
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .white
    }
    
    internal lazy var addItemAccessories = UIButton().then {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("추가", for: .normal)
        $0.backgroundColor = .red
    }
    
    override func viewDidLoad() {
        self.view.addSubview(contentView)
        contentView.snp.makeConstraints{
            $0.edges.equalTo(self.view.safeAreaLayoutGuide.snp.edges)
        }
        
        self.view.addSubview(self.addItemAccessories)
        self.addItemAccessories.snp.makeConstraints{
            $0.trailing.bottom.equalToSuperview().offset(-20)
            $0.width.height.equalTo(100)
        }
        
        self.addItemAccessories.rx
            .tap.asDriver(onErrorJustReturn: ())
            .drive(onNext: { [weak self] _ in
                guard let _self = self else { return }
                _self.coordinator?.startAddItem()
            })
            .disposed(by: self.disposeBag)
    }
}
