//
//  RelatedCollectionViewCell.swift
//  HomeKuCoba
//
//  Created by Jenny Callista on 14/06/21.
//

import UIKit

class RelatedCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var relatedImg: UIImageView!
    static let identifier = "RelatedCollectionViewCell"
    static func nib() -> UINib {
            return UINib(nibName: "RelatedCollectionViewCell", bundle: nil)
        }
}
