//
//  FrameworkView.swift
//  Apple-Frameworks
//
//  Created by Bizet Rodriguez-Velez on 11/19/20.
//

import SwiftUI

struct FrameworkTitleView: View {
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

struct FrameworkView_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
            FrameworkTitleView(framework: MockData.sampleFramework)
                .previewLayout(PreviewLayout.sizeThatFits)
                .padding()
                .previewDisplayName("Normal Mode")
            
            FrameworkTitleView(framework: MockData.sampleFramework)
                .previewLayout(PreviewLayout.sizeThatFits)
                .padding()
                .background(Color(.systemBackground))
                .environment(\.colorScheme, .dark)
                .previewDisplayName("Dark Mode")
        }
    }
}
