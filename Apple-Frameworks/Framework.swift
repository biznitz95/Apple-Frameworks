//
//  Framework.swift
//  Apple-Frameworks
//
//  Created by Bizet Rodriguez-Velez on 11/19/20.
//

import Foundation

struct Framework: Hashable, Identifiable {
    var id = UUID()
    
    let name: String
    let imageName: String
    let urlString: String
    let description: String
}
