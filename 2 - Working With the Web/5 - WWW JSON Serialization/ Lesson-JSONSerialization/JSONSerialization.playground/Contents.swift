import UIKit

var urlComponents = URLComponents(string: "https://api.nasa.gov/planetary/apod")!
urlComponents.queryItems = [
    "api_key": "DEMO_KEY",
    "date": "2013-07-16"
].map { URLQueryItem(name: $0.key, value: $0.value) }

Task {
    let (data, response) = try await URLSession.shared.data(from: urlComponents.url!)
    if let httpResponse = response as? HTTPURLResponse,
       httpResponse.statusCode == 200,
       let string = String(data: data, encoding: .utf8) {
         print(string)
    }
}

Task {
    let (data, response) = try await URLSession.shared.data(from: urlComponents.url!)

    let jsonDecoder = JSONDecoder()
    if let httpResponse = response as? HTTPURLResponse,
        httpResponse.statusCode == 200,
        let photoDictionary = try? jsonDecoder.decode([String: String].self, from: data) {
       print(photoDictionary)
    }
}

struct PhotoInfo: Codable {
    var title: String
    var description: String
    var url: URL
    var copyright: String?

    enum CodingKeys: String, CodingKey {
        case title
        case description = "explanation"
        case url
        case copyright
    }
}

print("\n\n")

Task {
    let (data, response) = try await URLSession.shared.data(from: urlComponents.url!)

    let jsonDecoder = JSONDecoder()
    if let httpResponse = response as? HTTPURLResponse,
        httpResponse.statusCode == 200,
        let photoInfo = try? jsonDecoder.decode(PhotoInfo.self, from: data) {
       print(photoInfo)
    }
}

enum PhotoInfoError: Error, LocalizedError {
    case itemNotFound
}

func fetchPhotoInfo() async throws -> PhotoInfo {
    var urlComponents = URLComponents(string: "https://api.nasa.gov/planetary/apod")!
    urlComponents.queryItems = [
        "api_key": "DEMO_KEY"
    ].map { URLQueryItem(name: $0.key, value: $0.value) }

    let (data, response) = try await URLSession.shared.data(from: urlComponents.url!)

    guard let httpResponse = response as? HTTPURLResponse,
          httpResponse.statusCode == 200 else {
        throw PhotoInfoError.itemNotFound
    }
    
    let jsonDecoder = JSONDecoder()
    let photoInfo = try jsonDecoder.decode(PhotoInfo.self, from: data)
    return(photoInfo)
}

Task {
    do {
        let photoInfo = try await fetchPhotoInfo()
        print("Successfully fetched PhotoInfo: \(photoInfo)")
    } catch {
        print("Fetch PhotoInfo Failed with Error: \(error)")
    }
}

/*:

 _Copyright © 2021 Apple Inc._

 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_

 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._

 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
