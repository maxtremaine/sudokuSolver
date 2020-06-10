import Foundation
import Puzzle
import IndexableString

// Puzzle.hallo()

let path = "IO/test.txt"
let contents = try String(contentsOfFile: path, encoding: String.Encoding.utf8)
print(contents[4])