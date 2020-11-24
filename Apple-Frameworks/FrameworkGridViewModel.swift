//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Bizet Rodriguez on 11/24/20.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    // MARK: - Properties
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    // MARK: - Publishers
    @Published var isShowingDetailView = false
    
}
