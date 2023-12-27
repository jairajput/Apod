//
//  ApodHeaderView.swift
//  APOD
//
//  Created by Jai  on 27/12/23.
//

import SwiftUI

struct ApodHeaderView: View {
    var apod : Apod
    @State private var isAnimatingImage:Bool = false
    var body: some View {
        ZStack{
            LinearGradient(
                gradient: Gradient(colors: [Color(red: 0.9, green: 0.85, blue: 0.7), Color(red: 0.75, green: 0.65, blue: 0.5)]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            if let url = URL(string: apod.url) {
                AsyncImage(url: url) { image in
                    // Display the loaded image
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    // Display a placeholder until the image loads
                    ProgressView()
                }
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
            }
            
        }
        .frame(height:440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)){
                isAnimatingImage = true
            }
        }
    }
}

#Preview {
    ApodHeaderView(apod: ApodData[0])
        .previewLayout(.fixed(width: 375, height: 440))
}
