//
//  HomeInteractor.swift
//  news-app
//
//  Created by André  Lucas on 07/05/23.
//

import Foundation


struct HomeInteractor: HomeProtocol {
    
    let apiKey = "0789ed88102b47d1b0ccce2c5ca8c199"
    
    func getNoticiasNintendo(completion: @escaping (Result<[NewsEntity], Error>) -> Void) {
        guard let url = URL(string: "https://newsapi.org/v2/everything?q=nintendo") else {
            completion(.failure(NSError(domain: "Invalid URL", code: 0, userInfo: nil)))
            return
        }
        var request = URLRequest(url: url)
        request.addValue(apiKey, forHTTPHeaderField: "Authorization")
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NSError(domain: "No data returned", code: 0, userInfo: nil)))
                return
            }
            do {
                let decoder = JSONDecoder()
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
                   let articles = json["articles"] as? [[String: Any]] {
                    let newsResponse = try decoder.decode([NewsEntity].self, from: JSONSerialization.data(withJSONObject: articles))
                    completion(.success(newsResponse))
                } else {
                    completion(.failure(NSError(domain: "Invalid JSON format", code: 0, userInfo: nil)))
                }
            } catch let error {
                completion(.failure(error))
            }
        
            
        }
        
        task.resume()
    }
    func getNoticiasPlaystation(completion: @escaping (Result<[NewsEntity], Error>) -> Void) {
        guard let url = URL(string: "https://newsapi.org/v2/everything?q=playstation") else {
            completion(.failure(NSError(domain: "Invalid URL", code: 0, userInfo: nil)))
            return
        }
        var request = URLRequest(url: url)
        request.addValue(apiKey, forHTTPHeaderField: "Authorization")
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NSError(domain: "No data returned", code: 0, userInfo: nil)))
                return
            }
            do {
                let decoder = JSONDecoder()
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
                   let articles = json["articles"] as? [[String: Any]] {
                    let newsResponse = try decoder.decode([NewsEntity].self, from: JSONSerialization.data(withJSONObject: articles))
                    completion(.success(newsResponse))
                } else {
                    completion(.failure(NSError(domain: "Invalid JSON format", code: 0, userInfo: nil)))
                }
            } catch let error {
                completion(.failure(error))
            }
        
            
        }
        
        task.resume()
    }
    func getNoticiasSteam(completion: @escaping (Result<[NewsEntity], Error>) -> Void) {
        guard let url = URL(string: "https://newsapi.org/v2/everything?q=steam") else {
            completion(.failure(NSError(domain: "Invalid URL", code: 0, userInfo: nil)))
            return
        }
        var request = URLRequest(url: url)
        request.addValue(apiKey, forHTTPHeaderField: "Authorization")
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NSError(domain: "No data returned", code: 0, userInfo: nil)))
                return
            }
            do {
                let decoder = JSONDecoder()
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
                   let articles = json["articles"] as? [[String: Any]] {
                    let newsResponse = try decoder.decode([NewsEntity].self, from: JSONSerialization.data(withJSONObject: articles))
                    completion(.success(newsResponse))
                } else {
                    completion(.failure(NSError(domain: "Invalid JSON format", code: 0, userInfo: nil)))
                }
            } catch let error {
                completion(.failure(error))
            }
        
            
        }
        
        task.resume()
    }
    func getNoticiasXbox(completion: @escaping (Result<[NewsEntity], Error>) -> Void) {
        guard let url = URL(string: "https://newsapi.org/v2/everything?q=xbox") else {
            completion(.failure(NSError(domain: "Invalid URL", code: 0, userInfo: nil)))
            return
        }
        var request = URLRequest(url: url)
        request.addValue(apiKey, forHTTPHeaderField: "Authorization")
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NSError(domain: "No data returned", code: 0, userInfo: nil)))
                return
            }
            do {
                let decoder = JSONDecoder()
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
                   let articles = json["articles"] as? [[String: Any]] {
                    let newsResponse = try decoder.decode([NewsEntity].self, from: JSONSerialization.data(withJSONObject: articles))
                    completion(.success(newsResponse))
                } else {
                    completion(.failure(NSError(domain: "Invalid JSON format", code: 0, userInfo: nil)))
                }
            } catch let error {
                completion(.failure(error))
            }
        
            
        }
        
        task.resume()
    }
}
