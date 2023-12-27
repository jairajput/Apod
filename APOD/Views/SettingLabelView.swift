//
//  SettingLabelView.swift
//  APOD
//
//  Created by Jai  on 27/12/23.
//

import SwiftUI

struct SettingsLabelView: View {

  
  var labelText: String
  var labelImage: String

 

  var body: some View {
    HStack {
      Text(labelText.uppercased()).fontWeight(.bold)
      Spacer()
      Image(systemName: labelImage)
    }
  }
}



struct SettingsLabelView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsLabelView(labelText: "APOD", labelImage: "info.circle")
      .previewLayout(.sizeThatFits)
      .padding()
  }
}

