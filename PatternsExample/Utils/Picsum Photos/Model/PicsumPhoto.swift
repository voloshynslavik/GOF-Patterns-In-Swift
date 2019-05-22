//
//  PicsumPhoto.swift
//  MVX Patterns In Swift
//
//  Created by Voloshyn Slavik on 5/22/19.
//

struct PicsumPhoto: Codable {
    let id: String
    let author: String
    let originalURL: String
    let width: Int
    let height: Int
    
    enum CodingKeys: String, CodingKey {
        case id
        case author
        case originalURL = "download_url"
        case width
        case height
    }
    
}

//MARK: - Get URL of resized image 
extension PicsumPhoto {
    
    func getResizedImageURL(width: Int, height: Int) -> String {
        guard width > 0, height > 0 else {
            return self.originalURL
        }
        
        return self.originalURL
            .replacingOccurrences(of: String(self.width), with: String(width))
            .replacingOccurrences(of: String(self.height), with: String(height))
    }
    
}
