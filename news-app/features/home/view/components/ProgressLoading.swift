//
//  ProgressLoading.swift
//  news-app
//
//  Created by André  Lucas on 18/05/23.
//

import SwiftUI

struct ProgressLoading: View {
    var body: some View {
        VStack{
            Spacer()
            ProgressView()
            Spacer()
        }
    }
}

struct ProgressLoading_Previews: PreviewProvider {
    static var previews: some View {
        ProgressLoading()
    }
}
