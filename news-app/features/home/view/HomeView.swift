//
//  HomeView.swift
//  news-app
//
//  Created by André  Lucas on 24/04/23.
//

import SwiftUI

struct HomeView: View {
    @State var segmentationSelection : GamesEnum = .nintendo
    @StateObject var presenter = HomePresenter()
    var body: some View {
        NavigationView{
            VStack{
                Picker("", selection: $segmentationSelection) {
                    ForEach(GamesEnum.allCases, id: \.self) { option in
                        Text(option.rawValue)
                    }
                }.pickerStyle(SegmentedPickerStyle())
                    .padding()
                displayViews(selection: segmentationSelection)
            }
            .navigationTitle("Game news")
        }
    }
    
    func displayViews(selection: GamesEnum) -> some View {
        switch selection {
        case .nintendo:
            return AnyView(NintendoTabView())
        case .xbox:
            return AnyView(XboxTabView())
        case .playstation:
            return AnyView(PlaystationTabView())
        case .steam:
            return AnyView(SteamTabView())
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
