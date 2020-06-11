import Foundation
import Puzzle
import intIndexableString
import Cell

let t0 = DispatchTime.now()

let inputPath = "IO/start.sudoku"
let contents = try String(contentsOfFile: inputPath, encoding: String.Encoding.utf8)

let startCondition = try Puzzle.fromFile(content: contents)
var workingCondition = [startCondition]

if !(try startCondition.checkPuzzle()) {
    throw PuzzleError("The start condition is not valid.")
}

let runSequence = startCondition.grid.values
    .filter { $0.value != "_"}
    .sorted { $0.value < $1.value }

let t1 = DispatchTime.now()
let elapsedSeconds = Double((t1.uptimeNanoseconds - t0.uptimeNanoseconds) / 1000000000)
print(elapsedSeconds)