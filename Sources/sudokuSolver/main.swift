import Foundation
import Puzzle
import intIndexableString
import Cell

let inputPath = "IO/start.sudoku"
let contents = try String(contentsOfFile: inputPath, encoding: String.Encoding.utf8)

let testPuzzle = try Puzzle.fromFile(content: contents)