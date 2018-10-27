//
//  RepositoryCache.swift
//  Cashew
//
//  Created by Hicham Bouabdallah on 6/26/16.
//  Copyright © 2016 SimpleRocket LLC. All rights reserved.
//

import Foundation

@objc(SRRepositoryCache)
class RepositoryCache: NSObject {

    private static var __once: () = {
            _sharedCache = RepositoryCache()
        }()

    fileprivate static var token: Int = 0
    fileprivate static var _sharedCache: RepositoryCache?
    
    fileprivate let cache = BaseCache<QRepository>(countLimit: 1000)
    
    class func sharedCache() -> RepositoryCache {
        _ = RepositoryCache.__once
        return _sharedCache!
    }
    
    func removeObjectForKey(_ key: String) {
        cache.removeObjectForKey(key)
    }
    
    func fetch(_ key: String, fetcher: ( () -> QRepository? )) -> QRepository? {
        return cache.fetch(key, fetcher: fetcher)
    }
    
    func removeAll() {
        cache.removeAll()
    }
    
    class func RepositoryCacheKeyForAccountId(_ accountId: NSNumber, repositoryId: NSNumber) -> String {
        return "repository_\(accountId)_\(repositoryId)"
    }
    
}
