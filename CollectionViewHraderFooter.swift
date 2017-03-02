//
//  CollectionViewHraderFooter.swift
//  CollectionViewHeaderFooter
//
//  Created by Robert Wendel on 2/22/17.
//  Copyright © 2017 Robert Wendel. All rights reserved.
//

import UIKit
import Foundation
class CollectionViewHeaderFooter: UICollectionViewController {
    override func viewDidLoad() {
        NSLog("Collection ViewHeaderFooter - viewDidLoad")
        super.viewDidLoad()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        NSLog("Collection ViewHeaderFooter - numberOfItemsInSection")
        return 16
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        NSLog("Collection ViewHeaderFooter - cellForItemAt")
        let identifier = "CellSo"
        let headerFooterCell: HeaderFooterCell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! HeaderFooterCell
        headerFooterCell.cellLabel.text = "Ouch"
        return headerFooterCell
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        NSLog("Collection ViewHeaderFooter - viewForSupplementaryElementOfKind")
        var returnReusableView: UICollectionReusableView?
        var footer: HeaderFooterControls?
        var header: HeaderFooterControls?
        if kind == UICollectionElementKindSectionFooter {
            NSLog("In Collection ViewHeaderFooter for kind \(UICollectionElementKindSectionFooter)")
            footer =
                collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionFooter, withReuseIdentifier: "footer", for: indexPath)
                as? HeaderFooterControls
            returnReusableView=footer
        }
        else         if kind == UICollectionElementKindSectionHeader {
            NSLog("In Collection ViewHeaderFooter for kind \(UICollectionElementKindSectionHeader)")
            header =
                collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "SudsHeader", for: indexPath)
                as? HeaderFooterControls
            returnReusableView=header
        }
        NSLog("Returning from Collection ViewHeaderFooter")
        return returnReusableView!
    }
    
}
