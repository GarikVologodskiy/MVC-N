//
//  NetworkService.swift
//  MVC-N
//
//  Created by Igor Vologodskiy on 10.03.2023.
//

import Foundation

//Singleton
class NetworkService {
    
    private init() {}
    static let shared = NetworkService()
    
    //() - void, Any - any type. We don't know about a type
    public func getData(url: URL, completion: @escaping (Any) -> ()) {
        let session = URLSession.shared
        
        session.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                DispatchQueue.main.async {
                    completion(json)
                }
            } catch {
                print(error)
            }
        }.resume()
    }
}
