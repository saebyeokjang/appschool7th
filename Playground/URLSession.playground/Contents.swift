// 오래걸리는 작업, 비동기 호출을 위해 플레이그라운드 페이지의 무기한 실행을 허용하는 설정
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

import Foundation

let config = URLSessionConfiguration.default
