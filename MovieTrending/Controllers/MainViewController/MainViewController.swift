//
//  MainViewController.swift
//  MovieTrending
//
//  Created by Nafea Elkassas on 11/11/2024.
//

import UIKit

class MainViewController: UIViewController {
       //MARK: - Properties
    var viewModel: MainViewModel = MainViewModel()
    var cellDataSource: [Movie] = []
    
   //MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
        bindViewModel()
    }
    
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        viewModel.getData()
    }
    
       //MARK: - Behaviour
    
    func configView(){
        self.view.backgroundColor = .red
        self.title = "Main View"
        setUpTableView()
    }

    
    func bindViewModel(){
        viewModel.isLoading.bind { [weak self] isLoading in
            guard let self = self, let isLoading = isLoading else { return }
            DispatchQueue.main.async {
                if isLoading {
                    self.activityIndicator.startAnimating()
                } else {
                    self.activityIndicator.stopAnimating()
                }
            }
        }
        viewModel.cellDataSource.bind { [weak self] movies in
            guard let self = self, let movies = movies else { return }
            self.cellDataSource = movies
            self.reloadTableView()
        }
    }
    

}
