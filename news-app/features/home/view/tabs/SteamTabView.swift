//
//  SteamTabView.swift
//  news-app
//
//  Created by André  Lucas on 19/05/23.
//

import SwiftUI

struct SteamTabView: View {
    @StateObject var presenter = HomePresenter()
    var body: some View {
        VStack{
            switch presenter.state {
            case.loading:
                ProgressLoading()
            case .sucess(let noticias):
                ScrollView{
                    ForEach(noticias) { noticia in
                        CardNews(news: noticia)
                    }
                }
            case .error(let error):
                Text("erro: \(error.localizedDescription)")
            }
        }.onAppear{
            presenter.getNoticiasSteam()
        }
    }
}

struct SteamTabView_Previews: PreviewProvider {
    static var previews: some View {
        SteamTabView()
    }
}
