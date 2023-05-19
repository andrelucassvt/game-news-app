//
//  HomePresenter.swift
//  news-app
//
//  Created by André  Lucas on 16/05/23.
//

import Foundation


class HomePresenter: ObservableObject {
    var homeInteractor = HomeInteractor()
    @Published var state: HomeState = .loading
    
    func getNoticiasNintendo() -> Void {
        print(self.state)
        homeInteractor.getNoticiasNintendo{ result in
            DispatchQueue.main.async {
                switch result {
                case .success(let news):
                    print("aqui")
                    self.state = .sucess(noticias: news)
                case .failure(let error):
                    self.state = .error(error: error)
                    print(error)
                }
            }
        }

    }
    func getNoticiasXbox() -> Void {
        print(self.state)
        homeInteractor.getNoticiasXbox{ result in
            DispatchQueue.main.async {
                switch result {
                case .success(let news):
                    print("aqui")
                    self.state = .sucess(noticias: news)
                case .failure(let error):
                    self.state = .error(error: error)
                    print(error)
                }
            }
        }

    }
    func getNoticiasPlaystation() -> Void {
        print(self.state)
        homeInteractor.getNoticiasPlaystation{ result in
            DispatchQueue.main.async {
                switch result {
                case .success(let news):
                    print("aqui")
                    self.state = .sucess(noticias: news)
                case .failure(let error):
                    self.state = .error(error: error)
                    print(error)
                }
            }
        }

    }
    func getNoticiasSteam() -> Void {
        print(self.state)
        homeInteractor.getNoticiasSteam{ result in
            DispatchQueue.main.async {
                switch result {
                case .success(let news):
                    print("aqui")
                    self.state = .sucess(noticias: news)
                case .failure(let error):
                    self.state = .error(error: error)
                    print(error)
                }
            }
        }

    }



    
    enum HomeState {
        case loading
        case error(error: Error)
        case sucess(noticias: [NewsEntity])
    }
}
