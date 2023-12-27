//
//  ContentView.swift
//  APOD
//
//  Created by Jai  on 27/12/23.
//

import SwiftUI

struct ContentView: View {
  
  
  @State private var isShowingSettings: Bool = false
  
  var apod: [Apod] = ApodData



  var body: some View {
    NavigationView {
      List {
        ForEach(apod.shuffled()) { item in
            NavigationLink(destination: ApodDetailView(apod: item)) {
            ApodRowView(apod: item)
              .padding(.vertical, 4)
          }
        }
      }
      .navigationTitle("Apod")
      .navigationBarItems(
        trailing:
          Button(action: {
            isShowingSettings = true
          }) {
            Image(systemName: "slider.horizontal.3")
          }
          .sheet(isPresented: $isShowingSettings) {
            SettingsView()
          }
      )
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}

#Preview {
    ContentView()
}
