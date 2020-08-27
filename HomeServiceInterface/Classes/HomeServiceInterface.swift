//
//  HomeServiceInterface.swift
//  HomeServiceInterface
//
//  Created by Logic on 2020/3/13.
//

@_exported import CTMediator

public extension CTMediator {
    @objc func fetchHomeViewController(with parameters:  NSDictionary?) -> UIViewController {
        var params = (parameters ?? [:]) as! [AnyHashable : Any]
        params.updateValue("HomeService", forKey: kCTMediatorParamsKeySwiftTargetModuleName)
        
        if let vc = self.performTarget("HomeService", action: "nativeToFetchHomeViewController", params: params, shouldCacheTarget: false) as? UIViewController {
            return vc
        }
        return UIViewController()
    }
}
