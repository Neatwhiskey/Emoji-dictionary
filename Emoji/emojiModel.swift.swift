//
//  emojiModel.swift.swift
//  Emoji
//
//  Created by Jamaaldeen Opasina on 02/12/2021.
//

import Foundation

struct Emoji: Codable{
    var symbol: String
    var name: String
    var description: String
    var usage: String
    
//    let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
//    
//     func getURL() -> URL{
//        let archiveURL = documentsDirectory.appendingPathComponent("Emoji").appendingPathExtension("plist")
//         return archiveURL
//    }
//    
//    //let archiveURL = documentsDirectory.appendingPathComponent("Emoji").appendingPathExtension("plist")
//    
//    static func saveToFile(emojis:Array<Emoji>){
//        let archiveURL = getURL(<#T##self: Emoji##Emoji#>)
//        
//        let propertyListEncoder = PropertyListEncoder()
//        if let encodedEmoji = try? propertyListEncoder.encode(emojis){
//            try encodedEmoji.write(to: archiveURL(), options: .noFileProtection)
//        }
//        
//    }
//    
//    static func loadFromFile() -> Array<Emoji>{
//        let archiveURL = getURL(<#T##self: Emoji##Emoji#>)
//        let propertyListDecoder = PropertyListDecoder()
//        if let retrievedNoteData = try? Data(contentsOf: archiveURL()),
//            let decodedNote = try?
//               propertyListDecoder.decode(Array<Emoji>.self, archiveURL )
//        return emojis
//    }
}
