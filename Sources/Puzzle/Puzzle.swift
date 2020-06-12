import intIndexableString
import Cell

public struct Puzzle {
    public var grid: [CellCode: Cell] = [:]

    init(_ grid: [CellCode: Cell]) throws {
        self.grid = grid

        for (key, cell) in (self.grid.filter {$1.value == "_"}) {
            self.grid[key]!.freedom = calcCellFreedom(cell)
        }

        if grid.count != 81 {
            throw PuzzleError("This puzzle is the wrong size.")
        }
    }

    public static func fromFile(content: String) throws -> Puzzle {
        if (content.count != 167) {
            throw PuzzleError("The .sudoku file is not formatted properly.")
        }

        return try Puzzle([CellCode.a1: Cell(CellCode.a1, value: content[16]), CellCode.b1: Cell(CellCode.b1, value: content[17]),
            CellCode.c1: Cell(CellCode.c1, value: content[18]), CellCode.d1: Cell(CellCode.d1, value: content[20]),
            CellCode.e1: Cell(CellCode.e1, value: content[21]), CellCode.f1: Cell(CellCode.f1, value: content[22]),
            CellCode.g1: Cell(CellCode.g1, value: content[24]), CellCode.h1: Cell(CellCode.h1, value: content[25]),
            CellCode.i1: Cell(CellCode.i1, value: content[26]), CellCode.a2: Cell(CellCode.a2, value: content[30]),
            CellCode.b2: Cell(CellCode.b2, value: content[31]), CellCode.c2: Cell(CellCode.c2, value: content[32]),
            CellCode.d2: Cell(CellCode.d2, value: content[34]), CellCode.e2: Cell(CellCode.e2, value: content[35]),
            CellCode.f2: Cell(CellCode.f2, value: content[36]), CellCode.g2: Cell(CellCode.g2, value: content[38]),
            CellCode.h2: Cell(CellCode.h2, value: content[39]), CellCode.i2: Cell(CellCode.i2, value: content[40]),
            CellCode.a3: Cell(CellCode.a3, value: content[44]), CellCode.b3: Cell(CellCode.b3, value: content[45]),
            CellCode.c3: Cell(CellCode.c3, value: content[46]), CellCode.d3: Cell(CellCode.d3, value: content[48]),
            CellCode.e3: Cell(CellCode.e3, value: content[49]), CellCode.f3: Cell(CellCode.f3, value: content[50]),
            CellCode.g3: Cell(CellCode.g3, value: content[52]), CellCode.h3: Cell(CellCode.h3, value: content[53]),
            CellCode.i3: Cell(CellCode.i3, value: content[54]), CellCode.a4: Cell(CellCode.a4, value: content[72]),
            CellCode.b4: Cell(CellCode.b4, value: content[73]), CellCode.c4: Cell(CellCode.c4, value: content[74]),
            CellCode.d4: Cell(CellCode.d4, value: content[76]), CellCode.e4: Cell(CellCode.e4, value: content[77]),
            CellCode.f4: Cell(CellCode.f4, value: content[78]), CellCode.g4: Cell(CellCode.g4, value: content[80]),
            CellCode.h4: Cell(CellCode.h4, value: content[81]), CellCode.i4: Cell(CellCode.i4, value: content[82]),
            CellCode.a5: Cell(CellCode.a5, value: content[86]), CellCode.b5: Cell(CellCode.b5, value: content[87]),
            CellCode.c5: Cell(CellCode.c5, value: content[88]), CellCode.d5: Cell(CellCode.d5, value: content[90]),
            CellCode.e5: Cell(CellCode.e5, value: content[91]), CellCode.f5: Cell(CellCode.f5, value: content[92]),
            CellCode.g5: Cell(CellCode.g5, value: content[94]), CellCode.h5: Cell(CellCode.h5, value: content[95]),
            CellCode.i5: Cell(CellCode.i5, value: content[96]), CellCode.a6: Cell(CellCode.a6, value: content[100]),
            CellCode.b6: Cell(CellCode.b6, value: content[101]), CellCode.c6: Cell(CellCode.c6, value: content[102]),
            CellCode.d6: Cell(CellCode.d6, value: content[104]), CellCode.e6: Cell(CellCode.e6, value: content[105]),
            CellCode.f6: Cell(CellCode.f6, value: content[106]), CellCode.g6: Cell(CellCode.g6, value: content[108]),
            CellCode.h6: Cell(CellCode.h6, value: content[109]), CellCode.i6: Cell(CellCode.i6, value: content[110]),
            CellCode.a7: Cell(CellCode.a7, value: content[128]), CellCode.b7: Cell(CellCode.b7, value: content[129]),
            CellCode.c7: Cell(CellCode.c7, value: content[130]), CellCode.d7: Cell(CellCode.d7, value: content[132]),
            CellCode.e7: Cell(CellCode.e7, value: content[133]), CellCode.f7: Cell(CellCode.f7, value: content[134]),
            CellCode.g7: Cell(CellCode.g7, value: content[136]), CellCode.h7: Cell(CellCode.h7, value: content[137]),
            CellCode.i7: Cell(CellCode.i7, value: content[138]), CellCode.a8: Cell(CellCode.a8, value: content[142]),
            CellCode.b8: Cell(CellCode.b8, value: content[143]), CellCode.c8: Cell(CellCode.c8, value: content[144]),
            CellCode.d8: Cell(CellCode.d8, value: content[146]), CellCode.e8: Cell(CellCode.e8, value: content[147]),
            CellCode.f8: Cell(CellCode.f8, value: content[148]), CellCode.g8: Cell(CellCode.g8, value: content[150]),
            CellCode.h8: Cell(CellCode.h8, value: content[151]), CellCode.i8: Cell(CellCode.i8, value: content[152]),
            CellCode.a9: Cell(CellCode.a9, value: content[156]), CellCode.b9: Cell(CellCode.b9, value: content[157]),
            CellCode.c9: Cell(CellCode.c9, value: content[158]), CellCode.d9: Cell(CellCode.d9, value: content[160]),
            CellCode.e9: Cell(CellCode.e9, value: content[161]), CellCode.f9: Cell(CellCode.f9, value: content[162]),
            CellCode.g9: Cell(CellCode.g9, value: content[164]), CellCode.h9: Cell(CellCode.h9, value: content[165]),
            CellCode.i9: Cell(CellCode.i9, value: content[166])])
    }

    public func toFile() -> String {
        let a1 = self.grid[CellCode.a1]!.value; let b1 = self.grid[CellCode.b1]!.value; let c1 = self.grid[CellCode.c1]!.value
        let d1 = self.grid[CellCode.d1]!.value; let e1 = self.grid[CellCode.e1]!.value; let f1 = self.grid[CellCode.f1]!.value
        let g1 = self.grid[CellCode.g1]!.value; let h1 = self.grid[CellCode.h1]!.value; let i1 = self.grid[CellCode.i1]!.value
        let a2 = self.grid[CellCode.a2]!.value; let b2 = self.grid[CellCode.b2]!.value; let c2 = self.grid[CellCode.c2]!.value
        let d2 = self.grid[CellCode.d2]!.value; let e2 = self.grid[CellCode.e2]!.value; let f2 = self.grid[CellCode.f2]!.value
        let g2 = self.grid[CellCode.g2]!.value; let h2 = self.grid[CellCode.h2]!.value; let i2 = self.grid[CellCode.i2]!.value
        let a3 = self.grid[CellCode.a3]!.value; let b3 = self.grid[CellCode.b3]!.value; let c3 = self.grid[CellCode.c3]!.value
        let d3 = self.grid[CellCode.d3]!.value; let e3 = self.grid[CellCode.e3]!.value; let f3 = self.grid[CellCode.f3]!.value
        let g3 = self.grid[CellCode.g3]!.value; let h3 = self.grid[CellCode.h3]!.value; let i3 = self.grid[CellCode.i3]!.value
        let a4 = self.grid[CellCode.a4]!.value; let b4 = self.grid[CellCode.b4]!.value; let c4 = self.grid[CellCode.c4]!.value
        let d4 = self.grid[CellCode.d4]!.value; let e4 = self.grid[CellCode.e4]!.value; let f4 = self.grid[CellCode.f4]!.value
        let g4 = self.grid[CellCode.g4]!.value; let h4 = self.grid[CellCode.h4]!.value; let i4 = self.grid[CellCode.i4]!.value
        let a5 = self.grid[CellCode.a5]!.value; let b5 = self.grid[CellCode.b5]!.value; let c5 = self.grid[CellCode.c5]!.value
        let d5 = self.grid[CellCode.d5]!.value; let e5 = self.grid[CellCode.e5]!.value; let f5 = self.grid[CellCode.f5]!.value
        let g5 = self.grid[CellCode.g5]!.value; let h5 = self.grid[CellCode.h5]!.value; let i5 = self.grid[CellCode.i5]!.value
        let a6 = self.grid[CellCode.a6]!.value; let b6 = self.grid[CellCode.b6]!.value; let c6 = self.grid[CellCode.c6]!.value
        let d6 = self.grid[CellCode.d6]!.value; let e6 = self.grid[CellCode.e6]!.value; let f6 = self.grid[CellCode.f6]!.value
        let g6 = self.grid[CellCode.g6]!.value; let h6 = self.grid[CellCode.h6]!.value; let i6 = self.grid[CellCode.i6]!.value
        let a7 = self.grid[CellCode.a7]!.value; let b7 = self.grid[CellCode.b7]!.value; let c7 = self.grid[CellCode.c7]!.value
        let d7 = self.grid[CellCode.d7]!.value; let e7 = self.grid[CellCode.e7]!.value; let f7 = self.grid[CellCode.f7]!.value
        let g7 = self.grid[CellCode.g7]!.value; let h7 = self.grid[CellCode.h7]!.value; let i7 = self.grid[CellCode.i7]!.value
        let a8 = self.grid[CellCode.a8]!.value; let b8 = self.grid[CellCode.b8]!.value; let c8 = self.grid[CellCode.c8]!.value
        let d8 = self.grid[CellCode.d8]!.value; let e8 = self.grid[CellCode.e8]!.value; let f8 = self.grid[CellCode.f8]!.value
        let g8 = self.grid[CellCode.g8]!.value; let h8 = self.grid[CellCode.h8]!.value; let i8 = self.grid[CellCode.i8]!.value
        let a9 = self.grid[CellCode.a9]!.value; let b9 = self.grid[CellCode.b9]!.value; let c9 = self.grid[CellCode.c9]!.value
        let d9 = self.grid[CellCode.d9]!.value; let e9 = self.grid[CellCode.e9]!.value; let f9 = self.grid[CellCode.f9]!.value
        let g9 = self.grid[CellCode.g9]!.value; let h9 = self.grid[CellCode.h9]!.value; let i9 = self.grid[CellCode.i9]!.value
        
        var output = ""
        output += "  abc def ghi\n"
        output += "1 \(a1)\(b1)\(c1)|\(d1)\(e1)\(f1)|\(g1)\(h1)\(i1)\n"
        output += "2 \(a2)\(b2)\(c2)|\(d2)\(e2)\(f2)|\(g2)\(h2)\(i2)\n"
        output += "3 \(a3)\(b3)\(c3)|\(d3)\(e3)\(f3)|\(g3)\(h3)\(i3)\n"
        output += "  -----------\n"
        output += "4 \(a4)\(b4)\(c4)|\(d4)\(e4)\(f4)|\(g4)\(h4)\(i4)\n"
        output += "5 \(a5)\(b5)\(c5)|\(d5)\(e5)\(f5)|\(g5)\(h5)\(i5)\n"
        output += "6 \(a6)\(b6)\(c6)|\(d6)\(e6)\(f6)|\(g6)\(h6)\(i6)\n"
        output += "  -----------\n"
        output += "7 \(a7)\(b7)\(c7)|\(d7)\(e7)\(f7)|\(g7)\(h7)\(i7)\n"
        output += "8 \(a8)\(b8)\(c8)|\(d8)\(e8)\(f8)|\(g8)\(h8)\(i8)\n"
        output += "9 \(a9)\(b9)\(c9)|\(d9)\(e9)\(f9)|\(g9)\(h9)\(i9)"

        return output
    }

    func calcCellFreedom(_ cell: Cell) -> Int {
        var freedom = 0

        let colList = self.getGroup(GroupType.Column, colCode: cell.col)
        let rowList = self.getGroup(GroupType.Row, rowCode: cell.row)
        let boxList = self.getGroup(GroupType.Box, boxCode: cell.box)

        for relatedCell in colList + rowList + boxList {
            if relatedCell.value == "_" {
                freedom += 1
            }
        }

        return freedom
    }

    func getGroup(_ groupType: GroupType, rowCode: Int? = nil, colCode: Column? = nil,
        boxCode: Box? = nil) -> [Cell] {
        var output: [Cell] = []
        
        for (_, cell) in self.grid {
            switch groupType {
                case GroupType.Row:
                    if cell.row == rowCode {
                        output.append(cell)
                    }
                case GroupType.Column:
                    if cell.col == colCode {
                        output.append(cell)
                    }
                case GroupType.Box:
                    if cell.box == boxCode {
                        output.append(cell)
                    }
            }
        }

        return output
    }

    public func checkRelativeCells(_ cell: Cell) throws -> Bool {

        if try checkGroup(self.getGroup(GroupType.Row, rowCode: cell.row)) == false {
            return false
        }

        if try checkGroup(self.getGroup(GroupType.Column, colCode: cell.col)) == false {
            return false
        }

        if try checkGroup(self.getGroup(GroupType.Box, boxCode: cell.box)) == false {
            return false
        }

        return true
    }

    public func checkPuzzle() throws -> Bool {
        for row in 1...9 {
            if try checkGroup(self.getGroup(GroupType.Row, rowCode: row)) == false {
                return false
            }
        }

        for col in Column.allCases {
            if try checkGroup(self.getGroup(GroupType.Column, colCode: col)) == false {
                return false
            }
        }

        for box in Box.allCases {
            if try checkGroup(self.getGroup(GroupType.Box, boxCode: box)) == false {
                return false
            }
        }

        return true
    }
}

public struct PuzzleError: Error {
    let message: String

    public init(_ message: String) {
        self.message = message
    }
}

enum GroupType {
    case Row, Column, Box
}

func checkGroup(_ group: [Cell]) throws -> Bool {
    if group.count != 9 {
        throw PuzzleError("The group size renders it invalid.")
    }

    var checkScope: Set<Character> = []

    for cell in group {
        if cell.value != "_" {
            if checkScope.contains(cell.value) {
                return false
            } else {
                checkScope.insert(cell.value)
            }
        }
    }

    return true
}