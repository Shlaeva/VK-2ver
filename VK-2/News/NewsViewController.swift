//
//  NewsViewController.swift
//  VK-2
//
//  Created by Julie on 01.01.2021.
//

import UIKit

class NewsViewController: UIViewController {

    @IBOutlet weak var newsTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        newsTableView.register(UINib(nibName: "NewsTableViewCell", bundle: nil), forCellReuseIdentifier: "newsCell")
        
        newsTableView.delegate = self
        newsTableView.dataSource = self
        
        
    }

}

extension NewsViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "newsCell") as! NewsTableViewCell
        
        cell.textNews!.text = news[indexPath.row].textNews
        cell.imageNews!.image = news[indexPath.row].imagesNews
        
//        с коллекцией не получилось
        cell.collectionNews!.setImage(news[indexPath.row].imagesNews)
        return cell
        
    }
    

}


//        с коллекцией не получилось

extension NewsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = UICollectionViewCell()
        
        return cell
    }
    
    
}
