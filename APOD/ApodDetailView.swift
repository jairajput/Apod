//
//  ApodDetailView.swift
//  APOD
//
//  Created by Jai  on 27/12/23.
//

import SwiftUI

struct ApodDetailView: View {
    var apod : Apod
    var body: some View {
        NavigationView {
          ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
              ApodHeaderView(apod: apod)
              
              VStack(alignment: .leading, spacing: 20) {
                            Text(apod.title)
                  .font(.largeTitle)
                  .fontWeight(.heavy)
//
                
        
                  Text(apod.copyright)
                  .font(.headline)
                  .multilineTextAlignment(.leading)
                
//
                
                Text("Learn more about \(apod.title)".uppercased())
                  .fontWeight(.bold)
//                 
                
                
                Text(apod.explanation)
                  .multilineTextAlignment(.leading)
                
                  .padding(.top, 10)
                  .padding(.bottom, 40)
              }           .padding(.horizontal, 20)
              .frame(maxWidth: 640, alignment: .center)
            }
            .navigationBarTitle(apod.title, displayMode: .inline)
            .navigationBarHidden(true)
          }
          .edgesIgnoringSafeArea(.top)
        } //
        .navigationViewStyle(StackNavigationViewStyle())
      }
    }
    #Preview {
        ApodDetailView(apod: ApodData[0])
    }
