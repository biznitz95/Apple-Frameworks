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
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .padding()
                .font(.body)
            
            Spacer()
            
            Button {
                print(framework.urlString)
            } label: {
                AFButton(title: "Learn More")
            }
            
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
