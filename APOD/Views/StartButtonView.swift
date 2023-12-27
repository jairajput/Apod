//
//  StartButtonView.swift
//  APOD
//
//  Created by Jai  on 27/12/23.
//

import SwiftUI

struct StartButtonView: View {
    
    @AppStorage ("isOnbarding") var isOnboarding:Bool?
    var body: some View {
        
        Button(action: {
            isOnboarding = false
        }) {
            
            HStack(spacing:8) {
                Text("Explore Apod")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal ,16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white , lineWidth:1.25)
            )
            
    }
        .accentColor(Color.blue)
        
    }
}

#Preview {
    StartButtonView()
        .previewLayout(.sizeThatFits)
}
