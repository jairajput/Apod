//
//  ApodModel.swift
//  APOD
//
//  Created by Jai  on 27/12/23.
//

import SwiftUI

struct Apod:Identifiable, Hashable{
    var id = UUID()
    var copyright: String
    var date : String
    var explanation : String
    var hdurl: String
    var media_type: String
    var service_version : String
    var title : String
    var url: String
}


