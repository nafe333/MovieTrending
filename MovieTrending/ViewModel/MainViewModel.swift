//
//  MainViewModel.swift
//  MovieTrending
//
//  Created by Nafea Elkassas on 11/11/2024.
//

import Foundation
class MainViewModel {
       //MARK: - Properties
    var isLoading: Observable<Bool> = Observable(false)
    var cellDataSource: Observable<[Movie]> = Observable(nil)
    var dataSource: TrendingMovieModel?
   
       //MARK: - Behaviour
    func numberOfTableViewSections() -> Int {
        1
    }
    func numberOfRowsInSection(in section: Int) -> Int {
        self.dataSource?.results.count ?? 0
    }
    // done
    func getData() {
           if isLoading.value ?? true {
               return
           }
           
        isLoading.value = true
           ApiCaller.getTrendingMovies { [weak self] result in
               self?.isLoading.value = false
               
               switch result {
               case .success(let trendingMovieData):
                   self?.dataSource = trendingMovieData
                   self?.mapCellData()
               case .failure(let err):
                   print(err)
               }
           }
       }
    
    func mapCellData(){
        self.cellDataSource.value = self.dataSource?.results ?? []
    }
    func getMovieTitle(_ movie: Movie) -> String {
        return movie.title ?? movie.name ?? ""
    }
}
