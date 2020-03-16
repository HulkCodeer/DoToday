source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

def shared_pods
  # Networking
  pod 'ReachabilitySwift' # https://github.com/ashleymills/Reachability.swift
  pod 'Alamofire' #네트워크통신 라이브러리
  pod 'RxAlamofire' # https://github.com/RxSwiftCommunity/RxAlamofire
  
  # JSON Mapping
  pod 'SwiftyJSON' # https://github.com/SwiftyJSON/SwiftyJSON
  
  # Architecture
  pod 'ReactorKit' # https://github.com/ReactorKit/ReactorKit
  
  # UI
  pod 'Then' # https://github.com/devxoul/Then
  
  # Auto Layout
  pod 'SnapKit', '~> 5.0.0'  # https://github.com/SnapKit/SnapKit
  
  # Rx Extensions
  pod 'RxSwift', '~> 5.0' # https://github.com/ReactiveX/RxSwift
  pod 'RxCocoa', '~> 5.0' # https://github.com/ReactiveX/RxSwift/tree/master/RxCocoa
  
  # Database
  pod 'RealmSwift'
end

target 'DoToday' do
    shared_pods
end

