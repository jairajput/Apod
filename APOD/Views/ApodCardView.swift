//
//  ApodCardView.swift
//  APOD
//
//  Created by Jai  on 27/12/23.
//

import SwiftUI

struct ApodCardView: View {
    let apod: Apod
    @State private var isAnimating: Bool = false

    var body: some View {
        ZStack {
            VStack(spacing: 20) {
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
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                }
                
                Text(apod.title)
                    .foregroundColor(Color.black)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                Text(apod.date)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                
                StartButtonView()
            }
            
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(
            LinearGradient(
                           gradient: Gradient(colors: [Color(red: 0.9, green: 0.85, blue: 0.7), Color(red: 0.75, green: 0.65, blue: 0.5)]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing
                       )
        )
        .cornerRadius(20)
//        .padding(.horizontal, 20)
        .ignoresSafeArea(.all)
    }
}

struct ApodCardView_Previews: PreviewProvider {
    static var previews: some View {
        ApodCardView(apod: ApodData[1])
    }
}

