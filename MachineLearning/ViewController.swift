//
//  ViewController.swift
//  MachineLearning
//
//  Created by  Yujiro Saito on 2017/10/31.
//  Copyright © 2017年 yujiro_saito. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {

    // MARK: - Property
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    let picker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.delegate = self
        picker.allowsEditing = false
    }

    // MARK: - Method
    
    @IBAction func cameraButtonDidTap(_ sender: Any) {
        if !UIImagePickerController.isSourceTypeAvailable(.camera) {
            return
        }
        
        picker.sourceType = .camera
        present(picker,animated: true)
    }
    
    @IBAction func libraryButtonDidTap(_ sender: Any) {
        picker.sourceType = .photoLibrary
        present(picker, animated: true)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
}

