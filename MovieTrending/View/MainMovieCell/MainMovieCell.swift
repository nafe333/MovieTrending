//
//  MainMovieCell.swift
//  MovieTrending
//
//  Created by Nafea Elkassas on 11/12/2024.
//

import UIKit
import SDWebImage

class MainMovieCell: UITableViewCell {

    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var rateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backView.round()
        backView.addBorder(color: .label, width: 1)
        movieImageView.round(5)
    }
    
    func setUpCell(viewModel: MovieCellViewModel){
        self.nameLabel.text = viewModel.title
        self.dateLabel.text = viewModel.date
        self.rateLabel.text = viewModel.rating
        self.movieImageView.sd_setImage(with: viewModel.imageUrl)
    }
}
