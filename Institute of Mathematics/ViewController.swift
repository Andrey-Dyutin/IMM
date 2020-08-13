//
//  ViewController.swift
//  Institute of Mathematics
//
//  Created by Андрей Дютин on 13.08.2020.
//  Copyright © 2020 Андрей Дютин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageViewLogotype: UIImageView!
    @IBOutlet weak var activityIndicatorImageViewLogotype: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityIndicatorImageViewLogotype.color = .blue
        activityIndicatorImageViewLogotype.isHidden = true
        activityIndicatorImageViewLogotype.hidesWhenStopped = true
        fetchImageLogotype()
        
        
    }
    //MARK: -
    func fetchImageLogotype(){
        activityIndicatorImageViewLogotype.isHidden = false
        activityIndicatorImageViewLogotype.startAnimating()
        guard let urlImageLogotype =
            URL(string:"https://kpfu.ru/docs/F58293241586/img1198266443.jpg") else { return }
        let session = URLSession.shared
        session.dataTask(with: urlImageLogotype) { (data, response, error) in
            if let data = data,let imageLogotype = UIImage(data: data) {
                DispatchQueue.main.async {
                    self.activityIndicatorImageViewLogotype.startAnimating()
                    self.activityIndicatorImageViewLogotype.isHidden = true
                    self.imageViewLogotype.image = imageLogotype
                }
            }
        }.resume()
    }
    
    
    
}

