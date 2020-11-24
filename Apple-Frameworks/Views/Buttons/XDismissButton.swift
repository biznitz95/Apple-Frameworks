//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by Bizet Rodriguez on 11/24/20.
//

import SwiftUI

struct XDismissButton: View {
    // MARK: - Bindings
    @Binding var isShowingDetailView: Bool
    
    // MARK: - Properties
    let imageName: String = "xmark"
    
    var body: some View {
        HStack {
            Spacer()
            
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: imageName)
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            XDismissButton(isShowingDetailView: .constant(false))
                .previewLayout(PreviewLayout.sizeThatFits)
                .padding()
                .previewDisplayName("Normal Mode")
            
            XDismissButton(isShowingDetailView: .constant(false))
                .previewLayout(PreviewLayout.sizeThatFits)
                .padding()
                .background(Color(.systemBackground))
                .environment(\.colorScheme, .dark)
                .previewDisplayName("Dark Mode")
        }
        
    }
}
