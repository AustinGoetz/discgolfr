//
//  PhotoPickerViewController.swift
//  discgolfr
//
//  Created by Austin Goetz on 10/19/20.
//

import UIKit

protocol PhotoSelectorDelegate: AnyObject {
    func photoPickerSelected(image: UIImage)
}

class PhotoPickerViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var selectPhotoButton: UIButton!
    
    // MARK: - Properties
    let imagePicker = UIImagePickerController()
    weak var delegate: PhotoSelectorDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViews()
    }
    
    // MARK: - Actions
    @IBAction func selectPhotoButtonTapped(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Add a Photo", message: nil, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in
            self.imagePicker.dismiss(animated: true, completion: nil)
        }
        let libraryAction = UIAlertAction(title: "Photo Library", style: .default) { (_) in
            self.openPhotoLibrary()
        }
        
        alertController.addAction(cancelAction)
        alertController.addAction(libraryAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    // MARK: - Functions
    func setUpViews() {
        imagePicker.delegate = self
        photoImageView.contentMode = .scaleAspectFill
        photoImageView.clipsToBounds = true
        photoImageView.backgroundColor = .systemTeal
        selectPhotoButton.setTitle("Add Photo", for: .normal)
    }
}

extension PhotoPickerViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func openPhotoLibrary() {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            imagePicker.sourceType = .photoLibrary
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        } else {
            let alertVC = UIAlertController(title: "Photo Library Not Accessible", message: "You will need to make sure your photo library is accessbible to use this feature", preferredStyle: .alert)
            let dismissAction = UIAlertAction(title: "Dismiss", style: .cancel, handler: nil)
            
            alertVC.addAction(dismissAction)
            present(alertVC, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[.editedImage] as? UIImage {
            guard let delegate = delegate else { return }
            delegate.photoPickerSelected(image: pickedImage)
            photoImageView.image = pickedImage
        }
        picker.dismiss(animated: true, completion: nil)
        self.selectPhotoButton.setTitle("", for: .normal)
    }
}
