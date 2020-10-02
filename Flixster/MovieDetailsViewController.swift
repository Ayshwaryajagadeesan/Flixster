//
//  MovieDetailsViewController.swift
//  Flixster
//
//  Created by Arun Deepak Sampath Kumar on 10/2/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    var movie : [String :Any]!
    
    @IBOutlet weak var backdropView: UIImageView!
    
    @IBOutlet weak var posterView: UIImageView!
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var synopsisLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
           let baseUrl = "https://image.tmdb.org/t/p/w500"
           let posterPath = movie["poster_path"] as! String
           let posterUrl = URL(string:baseUrl+posterPath)!
             //print (posterUrl)
             
            posterView.af_setImage(withURL: posterUrl)
           let baseUrl1 = "https://image.tmdb.org/t/p/w780"
            let backdropPath = movie["backdrop_path"] as! String
                     let backdropUrl = URL(string:baseUrl1+backdropPath)!
                       //print (posterUrl)
                       
                      backdropView.af_setImage(withURL: backdropUrl)
        
            titleLabel.text = movie["title"] as? String
            titleLabel.sizeToFit()
            synopsisLabel.text = movie["overview"]as? String
            synopsisLabel.sizeToFit()
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
