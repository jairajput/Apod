//
//  OnboardingView.swift
//  APOD
//
//  Created by Jai  on 27/12/23.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        var apod: [Apod] = ApodData
        
        TabView{
            ForEach(apod[0...5]) { item in
                
                ApodCardView(apod: item)
            
                
            }
        }
            .tabViewStyle(PageTabViewStyle())
            .padding(.vertical,20)
        }
    }
 

#Preview {
    OnboardingView()
}
 
