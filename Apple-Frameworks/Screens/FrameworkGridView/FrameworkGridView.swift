//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Bizet Rodriguez-Velez on 11/19/20.
//

import SwiftUI

struct FrameworkGridView: View {
    // MARK: - StateObjects
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks, id: \.id) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
                .navigationTitle("🍎 Frameworks")
                .sheet(isPresented: $viewModel.isShowingDetailView, content: {
                    FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                                        isShowingDetailView: $viewModel.isShowingDetailView)
                })
            }
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
