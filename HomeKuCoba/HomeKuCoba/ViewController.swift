//
//  ViewController.swift
//  HomeKuCoba
//
//  Created by Jenny Callista on 14/06/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{


    @IBOutlet weak var categoryCV: UICollectionView!
    @IBOutlet weak var relatedCV: UICollectionView!
    var relatedImgArr = [UIImage (named: "Ayam"),UIImage (named: "Buah"), UIImage (named: "Ikan"), UIImage (named: "Sayur")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        relatedCV.dataSource = self
        relatedCV.delegate = self
        categoryCV.dataSource = self
        categoryCV.delegate = self
        
        relatedCV.register(UICollectionViewCell.self, forCellWithReuseIdentifier: RelatedCollectionViewCell.identifier)
        categoryCV.register(UICollectionViewCell.self, forCellWithReuseIdentifier: RelatedCollectionViewCell.identifier)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return relatedImgArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RelatedCollectionViewCell", for: indexPath) as! RelatedCollectionViewCell
//
//        cell.relatedImg.image = relatedImgArr[indexPath.row]
//
//        return cell
        if collectionView == self.relatedCV {
                    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RelatedCollectionViewCell.identifier, for: indexPath) as! RelatedCollectionViewCell
            cell.relatedImg.image = relatedImgArr[indexPath.row]
             
                    
                    return cell
                }
                else {
                    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RelatedCollectionViewCell.identifier, for: indexPath) as! RelatedCollectionViewCell
                    cell.relatedImg.image = relatedImgArr[indexPath.row]
                    return cell
                }}
}

