// 오래걸리는 작업, 비동기 호출을 위해 플레이그라운드 페이지의 무기한 실행을 허용하는 설정
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

import Foundation
import UIKit

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

let urlString = "https://imgs.xkcd.com/comics/api.png"
let url = URL(string: urlString)!
let request = URLRequest(url: url)

let task = session.dataTask(with: request) { data, response, error in
    // 요청에 대한 처리
    guard let imageData = data else { return }
    _ = UIImage(data: imageData)
}

task.resume()
