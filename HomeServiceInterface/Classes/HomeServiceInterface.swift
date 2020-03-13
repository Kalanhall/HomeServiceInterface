//
//  HomeServiceInterface.swift
//  HomeServiceInterface
//
//  Created by Logic on 2020/3/13.
//

@_exported import KLServer

public extension KLServer {
    @objc public func fetchHomeViewController(with parameters:  NSDictionary?) -> UIViewController {
        var params = (parameters ?? [:]) as! [AnyHashable : Any]
        params.updateValue("HomeService", forKey: kKLServerParamsKey)
        if let vc = self.performService("HomeService", task: "nativeToFetchHomeViewController", params: params, shouldCacheService: false) as? UIViewController {
            return vc
        }
        return UIViewController()
    }
}
