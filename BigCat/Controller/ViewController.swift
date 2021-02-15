//
//  ViewController.swift
//  BigCat
//
//  Created by Sidhartha Das on 13/02/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let model = ImageData.createImageData()
    @IBOutlet weak var imageView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "List Of Big Cats"
        self.imageView.delegate = self
        self.imageView.dataSource = self
        self.imageView.register(UINib(nibName: "BigCatTableViewCell", bundle: nil), forCellReuseIdentifier: "bigCatCell")
         
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.model.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "bigCatCell", for: indexPath) as? BigCatTableViewCell{
            cell.bigCatLabel.text = self.model[indexPath.row].bigName
            return cell
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let imageData = model[indexPath.row]
        self.performSegue(withIdentifier: "ShowImageView", sender: imageData)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //if segue.identifier = "ShowImageView"
        let viewController = segue.destination as? ImageViewController
        viewController?.imageData = sender as? ImageData
    }
    
}



