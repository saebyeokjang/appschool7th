import Foundation

func nomalizedStarRating(forRating rating: Float, ofPossibleTotal total: Float) -> (Int, String) {
    let fraction = rating / total
    let ratingOutOf5 = fraction * 5
    let roundRating = round(ratingOutOf5)
    let numberOfStars = Int(roundRating)
    let ratingString = "\(numberOfStars) Star Movie"
    return (numberOfStars, ratingString)
}

let ratingAndDisplayString = nomalizedStarRating(forRating: 5, ofPossibleTotal: 10)
let ratingNumber = ratingAndDisplayString.0
let ratingString = ratingAndDisplayString.1
print("Rating: \(ratingNumber), Rating String: \(ratingString)")


// 배열
var moviesToWatch: Array<String> = Array()
moviesToWatch.append("Star Wars")
moviesToWatch.append("The Lion King")
moviesToWatch.append("The Incredibles")

print(moviesToWatch[0])
print(moviesToWatch[1])
print(moviesToWatch[2])
print(moviesToWatch.count)


// 배열 새 요소 삽입
moviesToWatch.insert("The Avengers", at: 1)
print(moviesToWatch[1])
print(moviesToWatch)

let removeItem = moviesToWatch.remove(at: 2)
print(removeItem) // 삭제된 아이템 반환 값
print(moviesToWatch[2]) // 뒤에 있던 아이템이 당겨짐
print(moviesToWatch)
print(moviesToWatch.count)

let firstMovieToWatch = moviesToWatch.first
print(firstMovieToWatch ?? "No movie")

let lastMovieToWatch = moviesToWatch.last
print(lastMovieToWatch as Any)

// Array<String> == [String]
let spyMovieSuggestions: [String] = ["The Bourne Identity", "Casino Royale", "Mission Impossible"]
moviesToWatch += spyMovieSuggestions
print(moviesToWatch)
print(moviesToWatch.count)

var starWarsTrilogy = Array<String>(repeating: "Star Wars: ", count: 3)
starWarsTrilogy[0] += "The Force Awakens"
starWarsTrilogy[1] += "The Empire Strikes Back"
starWarsTrilogy[2] += "The Return of the Jedi"
print(starWarsTrilogy)

// 특정 범위의 요소 교체
moviesToWatch.replaceSubrange(2...4, with: starWarsTrilogy)
print(moviesToWatch)

// 불변(immutable) NSArray
let movieToWatchCopy = moviesToWatch
print(movieToWatchCopy)

// 가변(mutable) NSMutableArray
var moviesToWatchCopy2 = moviesToWatch
moviesToWatchCopy2.append("The Matrix")
print(moviesToWatchCopy2)
