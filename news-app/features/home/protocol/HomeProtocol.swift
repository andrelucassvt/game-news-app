//
//  HomeProtocol.swift
//  news-app
//
//  Created by André  Lucas on 15/05/23.
//

import Foundation

protocol HomeProtocol {
    func getNoticiasNintendo(completion: @escaping (Result<[NewsEntity], Error>) -> Void)
    func getNoticiasXbox(completion: @escaping (Result<[NewsEntity], Error>) -> Void)
    func getNoticiasPlaystation(completion: @escaping (Result<[NewsEntity], Error>) -> Void)
    func getNoticiasSteam(completion: @escaping (Result<[NewsEntity], Error>) -> Void)
}
