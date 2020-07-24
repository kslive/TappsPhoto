//
//  PhotosCollectionViewController.swift
//  TappsPhoto
//
//  Created by Eugene Kiselev on 24.07.2020.
//  Copyright © 2020 Eugene Kiselev. All rights reserved.
//

import UIKit

class PhotosCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 15
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotoCell
        cell.backgroundColor = .black
        return cell
    }
}

extension PhotosCollectionViewController: UICollectionViewDelegateFlowLayout {
    
}
