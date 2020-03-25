//
//  CommentViewModel.swift
//  MVVMExample
//
//  Created by Timilsina, Nishan on 3/24/20.
//  Copyright © 2020 Timilsina, Nishan. All rights reserved.
//

import Foundation

class CommentViewModel{
    
    //init completion handler
    typealias completionBlock = ([Comment])->()

    var dataSourceArray = [Comment]()
    
    //create object of APIhandler
    let handler = APIHandler()
    
    
    //pass our array data using completion handler to its caller mathod
    func getDataFromAPIHandler(url:String,completionBlock: @escaping completionBlock){
        
        handler.getDataFromURL(withUrl: url) { [weak self] (arr) in
            self!.dataSourceArray = arr
            completionBlock(arr)
        }
    }
    
    func getNumberofRowInSection()-> Int{
        
       return  dataSourceArray.count
    }
    
    func getCommentAtIndex(index: Int)->Comment{
        
        let comment = dataSourceArray[index]
        return comment
    }
    
    func getCellData(index: Int){
        
        _ = self.getCommentAtIndex(index: index)
    }
}

