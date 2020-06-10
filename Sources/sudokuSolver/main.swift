import Foundation
import Puzzle

// Puzzle.hallo()

let path = "IO/test.txt"
let contents = try String(contentsOfFile: path, encoding: String.Encoding.utf8)
print(contents[contents.index(contents.startIndex, offsetBy: 0)])