import Foundation
import Puzzle
import intIndexableString
import Cell

// Puzzle.hallo()

let inputPath = "IO/start.sudoku"
let contents = try String(contentsOfFile: inputPath, encoding: String.Encoding.utf8)
print(contents[4])