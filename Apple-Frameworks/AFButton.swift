//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Bizet Rodriguez on 11/24/20.
//

import SwiftUI

struct AFButton: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(width: 250, height: 50, alignment: .center)
            .background(Color.red)
            .cornerRadius(10.0)
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AFButton(title: "Learn More")
                .previewLayout(PreviewLayout.sizeThatFits)
                .padding()
                .previewDisplayName("Normal Mode")
            
            AFButton(title: "Learn More")
                .previewLayout(PreviewLayout.sizeThatFits)
                .padding()
                .background(Color(.systemBackground))
                .environment(\.colorScheme, .dark)
                .previewDisplayName("Dark Mode")
        }
    }
}
