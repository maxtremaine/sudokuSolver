import Foundation
import Puzzle
import intIndexableString
import Cell

let t0 = DispatchTime.now()

let inputPath = "IO/start.sudoku"
let contents = try String(contentsOfFile: inputPath, encoding: String.Encoding.utf8)

let startCondition = try Puzzle.fromFile(content: contents)
var workingConditions: [Puzzle] = [startCondition]

if !(try startCondition.checkPuzzle()) {
    throw PuzzleError("The start condition is not valid.")
}

let runSequence = startCondition.grid.values
    .filter { $0.value != "_"}
    .sorted { $0.value < $1.value }

for cell in runSequence {
    var newWorkingConditions: [Puzzle] = []
    for workingCondition in workingConditions {
        for n in 1...9 {
            var newCondition = workingCondition
            newCondition.grid[cell.code]!.value = String(n)[0]

            if try newCondition.checkRelativeCells(cell) {
                newWorkingConditions.append(newCondition)
            }
        }
    }
    workingConditions = newWorkingConditions
    print(workingConditions.count)
}

let t1 = DispatchTime.now()
let elapsedSeconds = Double((t1.uptimeNanoseconds - t0.uptimeNanoseconds) / 1000000000)
print(elapsedSeconds)