//
//  Journal.swift
//  Journal
//
//  Created by Nelson Gonzalez on 4/3/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import Foundation

class Journal {
    var title: String
    var date: Date
    var posts: [Post]
    
    init(title: String, date: Date, posts: [Post]) {
        self.title = title
        self.date = date
        self.posts = posts
    }
}

class Post {
    
    var description: String
    
    init(description: String) {
        self.description = description
    }
    
    
}
