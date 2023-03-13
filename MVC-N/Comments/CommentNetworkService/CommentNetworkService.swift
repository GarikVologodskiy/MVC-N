//
//  CommentNetworkService.swift
//  MVC-N
//
//  Created by Igor Vologodskiy on 10.03.2023.
//

import Foundation


//abstract class for call the method without instanse
class CommentNetworlService {
    private init() {}
    
    //after call this method we get an object for fill an array of comments
    static func getComments(completion: @escaping(GetCommentResponse) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else { return }
        
        NetworkService.shared.getData(url: url) { (json) in
            do {
                let response = try GetCommentResponse(json: json)
                completion(response)
            } catch {
                print(error)
            }
        }
    }
}
