//
//  persistenceHelper.swift
//  Emoji
//
//  Created by Jamaaldeen Opasina on 07/01/2022.
//

import Foundation
enum DataPersistenceError: Error{
    case savingError(Error)
    case fileDoesNotExist(String)
    case noData
    case decodingError(Error)
    case deletingError(Error)
}

class PersistenceHelper{
    
    
    private static var emojis = [Emoji]()
    private static let filename = "Emojis.plist"
    
    
    static func save(emoji: Emoji) throws {
        
       
        
        emojis.append(emoji)
        do{
        try save()
        }catch{
            throw DataPersistenceError.decodingError(error)
        }
        
       
        
    }
    private static func save()throws{
        let url = FileManager.pathToDocumentsDirectory(with: filename)
        do{
            let data = try PropertyListEncoder().encode(emojis )
            try data.write(to: url, options: .atomic)
        }catch{
            throw DataPersistenceError.savingError(error)
            
        }
    }
    
    static func loadEmojis() throws ->[Emoji]{
        let url = FileManager.pathToDocumentsDirectory(with: filename)
        
        if FileManager.default.fileExists(atPath: url.path){
            if let data = FileManager.default.contents(atPath: url.path){
                do{
                    emojis = try PropertyListDecoder().decode([Emoji].self, from: data)
                }catch{
                    throw DataPersistenceError.decodingError(error)
                }
                
            }else{
                throw  DataPersistenceError.noData
                
            }
            
        }else{
            throw DataPersistenceError.fileDoesNotExist(filename)
            
        }
        return emojis
    }
    
    static func delete(emoji index: Int)throws{
        emojis.remove(at: index)
        do{
            try save()
        }catch{
            throw DataPersistenceError.deletingError(error)
        }
    }
}
