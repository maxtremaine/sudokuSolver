import Foundation
import Puzzle
import intIndexableString
import Cell

let inputPath = "IO/start.sudoku"
let contents = try String(contentsOfFile: inputPath, encoding: String.Encoding.utf8)

let testPuzzle = try Puzzle.fromFile(content: contents)

for cell in testPuzzle.toList(groupType: GroupType.Box, code: CellCode.a1) {
    print(cell.value)
}