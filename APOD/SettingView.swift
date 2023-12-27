//
//  SettingView.swift
//  APOD
//
//  Created by Jai  on 27/12/23.
//

import SwiftUI

struct SettingsView: View {
  
  
  @Environment(\.presentationMode) var presentationMode
  @AppStorage("isOnboarding") var isOnboarding: Bool = false
  
 

  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 20) {
       
          
          GroupBox(
            label:
              SettingsLabelView(labelText: "GalaxyFacts", labelImage: "info.circle")
          ) {
            Divider().padding(.vertical, 4)
            
            HStack(alignment: .center, spacing: 10) {
              Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .cornerRadius(9)
              
              Text("Galaxies, enormous celestial entities, encompass an awe-inspiring variety of shapes, sizes, and characteristics. One of the most renowned galaxies is our very own Milky Way, a barred spiral galaxy teeming with over 100 billion stars. The diversity of galaxies is staggering; some are relatively diminutive dwarf galaxies, home to a mere few billion stars, while others loom on a colossal scale, harboring trillions of stars within their cosmic boundaries. ")
                .font(.footnote)
            }
          }
         
          
          GroupBox(
            label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
          ) {
            Divider().padding(.vertical, 4)
            
            Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
              .padding(.vertical, 8)
              .frame(minHeight: 60)
              .layoutPriority(1)
              .font(.footnote)
              .multilineTextAlignment(.leading)
            
            Toggle(isOn: $isOnboarding) {
              if isOnboarding {
                Text("Restarted".uppercased())
                  .fontWeight(.bold)
                  .foregroundColor(Color.green)
              } else {
                Text("Restart".uppercased())
                  .fontWeight(.bold)
                  .foregroundColor(Color.secondary)
              }
            }
            .padding()
            .background(
              Color(UIColor.tertiarySystemBackground)
                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
            )
          }
          
          // MARK: - SECTION 3
          
          GroupBox(
            label:
            SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
          ) {
            SettingsRowView(name: "Developer", content: "Jai")
            
            SettingsRowView(name: "SwiftUI", content: "2.0")
            SettingsRowView(name: "Version", content: "1.1.0")
          }
          
        }         .navigationBarTitle(Text("Settings"), displayMode: .large)
        .navigationBarItems(
          trailing:
            Button(action: {
              presentationMode.wrappedValue.dismiss()
            }) {
              Image(systemName: "xmark")
            }
        )
        .padding()
      }
    }
  }
}


struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
      .preferredColorScheme(.dark)
      
  }
}


