//
//  Observable.swift
//  MovieTrending
//
//  Created by Nafea Elkassas on 11/12/2024.
//

// can be used anywhere else , not only main view model
import Foundation
class Observable<T> {
       //MARK: - Properties
    var value: T? {
        didSet {
            DispatchQueue.main.async {
                self.listener?(self.value)
            }
        }
    }
    private var listener: ((T?) -> Void)?
    
    init(_ value: T?) {
        self.value = value
    }
    
       //MARK: - Behaviour
    func bind(_ listener: @escaping ((T?) -> Void)){
        listener(value)
        self.listener = listener
    }
}
