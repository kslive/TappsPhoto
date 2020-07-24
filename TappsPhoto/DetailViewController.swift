//
//  DetailViewController.swift
//  TappsPhoto
//
//  Created by Eugene Kiselev on 25.07.2020.
//  Copyright © 2020 Eugene Kiselev. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var image: UIImage?

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.image = image
    }

    @IBAction func tapToShareButton(_ sender: UIButton) {
        
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("Good")
            }
        }
        
        present(shareController, animated: true)
    }
}
