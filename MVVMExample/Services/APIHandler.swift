//
//  APIHandler.swift
//  MVVMExample
//
//  Created by Timilsina, Nishan on 3/24/20.
//  Copyright © 2020 Timilsina, Nishan. All rights reserved.
//

import UIKit

class APIHandler {

    typealias completionBlock = ([Comment])->()
    
    //get data from API using completion handler
    func getDataFromURL(withUrl strUrl: String, completionBlock: @escaping completionBlock ){
        
        if  let urlpath = URL(string: strUrl){
        
            URLSession.shared.dataTask(with:urlpath, completionHandler: { (data, response, error   ) in
            
            if data != nil{
                let jsonDecoder = JSONDecoder()
                let array = try? jsonDecoder.decode([Comment].self, from: data!)
                completionBlock(array!)
            }else{
                
                let array = [Comment]()
                completionBlock(array)
                
                }
            
        }).resume()
    }
}
}
