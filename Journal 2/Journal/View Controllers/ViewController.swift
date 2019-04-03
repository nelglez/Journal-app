//
//  ViewController.swift
//  Journal
//
//  Created by Nelson Gonzalez on 4/3/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var descriptionTextView: UITextView!
    
    var postController: PostController?
    var entries: Journal? {
        didSet {
            updateViews()
        }
    }
    
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateViews()
    }
    
    private func updateViews() {
        guard isViewLoaded else {return}
        
        //Here i would like to display the post.description on the textView but how can i get it?
        
        descriptionTextView.text = entries?.posts.first?.description
        
    }

    @IBAction func saveBarButtonPressed(_ sender: UIBarButtonItem) {
        
        guard let description = descriptionTextView.text, !description.isEmpty, let entries = entries else {return}
        
        postController?.createPost(with: entries, description: description)
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
}

