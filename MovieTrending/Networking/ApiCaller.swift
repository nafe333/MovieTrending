//
//  ApiCaller.swift
//  MovieTrending
//
//  Created by Nafea Elkassas on 12/11/2024.
//

import Foundation

enum NetworkError: Error {
    case urlError
    case canNotParseData
}
public class ApiCaller {
    static func getTrendingMovies(completionHandler: @escaping (_ result: Result<TrendingMovieModel, NetworkError>) -> Void) {
            if NetworkConstant.shared.apiKey.isEmpty {
                print("<!> API KEY is Missing <!>")
                print("<!> Get One from: https://www.themoviedb.org/ <!>")
                return
            }
            
            let urlString = NetworkConstant.shared.serverAddress +
                    "trending/all/day?api_key=" +
        NetworkConstant.shared.apiKey
                    
            guard let url = URL(string: urlString) else {
                completionHandler(Result.failure(.urlError))
                return
            }
            
            URLSession.shared.dataTask(with: url) { dataResponse, urlResponse, err in
                if err == nil,
                   let data = dataResponse,
                   let resultData = try? JSONDecoder().decode(TrendingMovieModel.self, from: data) {
                    completionHandler(.success(resultData))
                } else {
                    print(err.debugDescription)
                    completionHandler(.failure(.canNotParseData))
                }
            }.resume()
    }
}
