import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

import Foundation

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

func fetchRepos(forUsername username: String) {
    let urlString = "https://api.github.com/users/\(username)/repos"
    let url = URL(string: urlString)!
    
    var request = URLRequest(url: url)
    request.setValue("application/vnd.github.v3+json", forHTTPHeaderField: "Accept")
    
    let task = session.dataTask(with: request) { data, response, error in
        guard let jsonData = data else {
            print(error ?? "Network Error")
            return
        }
        do {
            let deserialized = try JSONSerialization.jsonObject(with: jsonData, options: [])
            print(deserialized)
            
        } catch {
            print(error)
        }
    }
    task.resume()
}

fetchRepos(forUsername: "apple")
