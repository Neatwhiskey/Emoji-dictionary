//
//  FileManager+Extension.swift
//  Emoji
//
//  Created by Jamaaldeen Opasina on 07/01/2022.
//

import Foundation

extension FileManager{
    static func getDocumentsDirectory()->URL{
        FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    }
    
    static func pathToDocumentsDirectory(with filename: String)-> URL{
        return getDocumentsDirectory().appendingPathComponent(filename)
    }
}
