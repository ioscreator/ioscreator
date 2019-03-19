//
//  CollectionViewController.swift
//  IOSPassDataViewControllerTutorial
//
//  Created by Arthur Knopper on 11/03/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {
    let modelData = ["1","2","3","4","5","6","7","8","9"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return modelData.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // Configure the cell
        if let label = cell.viewWithTag(100) as? UILabel {
            label.text = modelData[indexPath.row]
        }
        
    
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as?
            DetailViewController, let index =
            collectionView.indexPathsForSelectedItems?.first {
            destination.selectedNumber = modelData[index.row]
        }
    }
   

}
