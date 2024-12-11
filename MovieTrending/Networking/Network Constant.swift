//
//  Network Constant.swift
//  MovieTrending
//
//  Created by Nafea Elkassas on 12/11/2024.
//

import Foundation
class NetworkConstant {
       //MARK: -  Singleton
    public static var shared: NetworkConstant = NetworkConstant()
    
    private init() {
        
    }
    
    public var apiKey: String {
        get {
            return "7fa5573f28b92958f3cdbb7d8f3cda55"
        }
    }
    
    public var serverAddress: String {
        get {
            return "https://api.themoviedb.org/3/"
        }
    }
    
    public var imageAddress: String {
        get {
            return "https://image.tmdb.org/t/p/w500/"
        }
    }
}
