//
//  GetCommentResponse.swift
//  MVC-N
//
//  Created by Igor Vologodskiy on 10.03.2023.
//

import Foundation


// Structure for getting and filling array of comments
struct GetCommentResponse {
    typealias JSON = [String: AnyObject]
    let comments: [Comment]
    
    init(json: Any) throws {
        guard let array = json as? [JSON] else { throw NetworkError.failInternetError }
        
        var comments = [Comment]()
        for dictionary in array {
            guard let comment = Comment(dict: dictionary) else { continue }
            comments.append(comment)
        }
        self.comments = comments
    }
}
