//
//  ApodRowView.swift
//  APOD
//
//  Created by Jai  on 27/12/23.
//

import SwiftUI

struct ApodRowView: View {
    var apod:Apod
    var body: some View {
        HStack{
            if let url = URL(string: apod.url) {
                AsyncImage(url: url) { image in
                    // Display the loaded image
                    image
                        .resizable()
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()

                    .frame(width: 80,height: 80 , alignment: .center)
                    .shadow(color: Color(red:0 ,green: 0 ,blue: 0 , opacity: 0.3), radius: 3, x:2 ,y:2)
//                    .background(
//                        LinearGradient(
//                                       gradient: Gradient(colors: [Color(red: 0.9, green: 0.85, blue: 0.7), Color(red: 0.75, green: 0.65, blue: 0.5)]),
//                                       startPoint: .topLeading,
//                                       endPoint: .bottomTrailing
//                                   )
//                    )
                    .cornerRadius(8)
                } placeholder: {
                    // Display a placeholder until the image loads
                    ProgressView()
                }
                
            }
            VStack(alignment: .leading , spacing: 5){
                Text(apod.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(apod.date)
                    .foregroundColor(Color.secondary)
            }
        }
    }
}

#Preview {
    ApodRowView(apod: ApodData[0])
        .previewLayout(.sizeThatFits)
        .padding()
}
