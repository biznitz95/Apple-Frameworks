//
//  FrameworkCardView.swift
//  Apple-Frameworks
//
//  Created by Bizet Rodriguez on 11/23/20.
//

import SwiftUI

struct FrameworkDetailView: View {
    // MARK: - Properties
    let framework: Framework
    
    // MARK: - Bindings
    @Binding var isShowingDetailView: Bool
    
    // MARK: - States
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .padding()
                .font(.body)
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
            .fullScreenCover(isPresented: $isShowingSafariView, content: {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            })
            
            Spacer()
        }
        
    }
}

struct FrameworkCardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
                .previewLayout(PreviewLayout.sizeThatFits)
                .padding()
                .previewDisplayName("Normal Mode")
            
            FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
                .previewLayout(PreviewLayout.sizeThatFits)
                .padding()
                .background(Color(.systemBackground))
                .environment(\.colorScheme, .dark)
                .previewDisplayName("Dark Mode")
        }
    }
}
