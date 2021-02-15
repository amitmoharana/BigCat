//
//  ImageViewController.swift
//  BigCat
//
//  Created by Sidhartha Das on 13/02/21.
//

import UIKit

class ImageViewController: UIViewController {
    
    var imageData: ImageData?
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var locatonLabel: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.hidesWhenStopped = true
        activityIndicator.startAnimating()
        fetchImageData()
        
    }
        func fetchImageData(){
        let url = URL(string: imageData!.bigUrl)!
        URLSession.shared.dataTask(with: url) { [weak self] (data, response, error) in
            guard let weakSelf = self, let content = weakSelf.imageData else { return }
            if error == nil, let response = response as? HTTPURLResponse, response.statusCode == 200{
                if let data = data, !data .isEmpty{
                    let image = UIImage(data: data)
                    sleep(1)
                    DispatchQueue.main.async(){
                        self?.activityIndicator.stopAnimating()
                        self?.imageView.image = image
                        self?.nameLabel.text = content.bigName
                        self?.weightLabel.text = "Weight: " + content.bigWeight
                        self?.locatonLabel.text = "Location: " + content.bigLocation
                    }
                }
            }else{
                print(error?.localizedDescription as Any)
            }
        }.resume()
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
