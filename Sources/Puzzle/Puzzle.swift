import intIndexableString
import Cell

public struct Puzzle {
    var a1: Cell; var b1: Cell; var c1: Cell; var d1: Cell; var e1: Cell; var f1: Cell
    var g1: Cell; var h1: Cell; var i1: Cell; var a2: Cell; var b2: Cell; var c2: Cell
    var d2: Cell; var e2: Cell; var f2: Cell; var g2: Cell; var h2: Cell; var i2: Cell
    var a3: Cell; var b3: Cell; var c3: Cell; var d3: Cell; var e3: Cell; var f3: Cell
    var g3: Cell; var h3: Cell; var i3: Cell; var a4: Cell; var b4: Cell; var c4: Cell
    var d4: Cell; var e4: Cell; var f4: Cell; var g4: Cell; var h4: Cell; var i4: Cell
    var a5: Cell; var b5: Cell; var c5: Cell; var d5: Cell; var e5: Cell; var f5: Cell
    var g5: Cell; var h5: Cell; var i5: Cell; var a6: Cell; var b6: Cell; var c6: Cell
    var d6: Cell; var e6: Cell; var f6: Cell; var g6: Cell; var h6: Cell; var i6: Cell
    var a7: Cell; var b7: Cell; var c7: Cell; var d7: Cell; var e7: Cell; var f7: Cell
    var g7: Cell; var h7: Cell; var i7: Cell; var a8: Cell; var b8: Cell; var c8: Cell
    var d8: Cell; var e8: Cell; var f8: Cell; var g8: Cell; var h8: Cell; var i8: Cell
    var a9: Cell; var b9: Cell; var c9: Cell; var d9: Cell; var e9: Cell; var f9: Cell
    var g9: Cell; var h9: Cell; var i9: Cell

    init(a1: Character, b1: Character, c1: Character,
        d1: Character, e1: Character, f1: Character, g1: Character, h1: Character, i1: Character,
        a2: Character, b2: Character, c2: Character, d2: Character, e2: Character, f2: Character, 
        g2: Character, h2: Character, i2: Character, a3: Character, b3: Character, c3: Character, 
        d3: Character, e3: Character, f3: Character, g3: Character, h3: Character, i3: Character, 
        a4: Character, b4: Character, c4: Character, d4: Character, e4: Character, f4: Character, 
        g4: Character, h4: Character, i4: Character, a5: Character, b5: Character, c5: Character, 
        d5: Character, e5: Character, f5: Character, g5: Character, h5: Character, i5: Character, 
        a6: Character, b6: Character, c6: Character, d6: Character, e6: Character, f6: Character, 
        g6: Character, h6: Character, i6: Character, a7: Character, b7: Character, c7: Character, 
        d7: Character, e7: Character, f7: Character, g7: Character, h7: Character, i7: Character, 
        a8: Character, b8: Character, c8: Character, d8: Character, e8: Character, f8: Character, 
        g8: Character, h8: Character, i8: Character, a9: Character, b9: Character, c9: Character, 
        d9: Character, e9: Character, f9: Character, g9: Character, h9: Character, i9: Character) {
        self.a1 = Cell(code: CellCode.a1, value: a1); self.b1 = Cell(code: CellCode.b1, value: b1)
        self.c1 = Cell(code: CellCode.c1, value: c1); self.d1 = Cell(code: CellCode.d1, value: d1)
        self.e1 = Cell(code: CellCode.e1, value: e1); self.f1 = Cell(code: CellCode.f1, value: f1)
        self.g1 = Cell(code: CellCode.g1, value: g1); self.h1 = Cell(code: CellCode.h1, value: h1)
        self.i1 = Cell(code: CellCode.i1, value: i1); self.a2 = Cell(code: CellCode.a2, value: a2)
        self.b2 = Cell(code: CellCode.b2, value: b2); self.c2 = Cell(code: CellCode.c2, value: c2)
        self.d2 = Cell(code: CellCode.d2, value: d2); self.e2 = Cell(code: CellCode.e2, value: e2)
        self.f2 = Cell(code: CellCode.f2, value: f2); self.g2 = Cell(code: CellCode.g2, value: g2)
        self.h2 = Cell(code: CellCode.h2, value: h2); self.i2 = Cell(code: CellCode.i2, value: i2)
        self.a3 = Cell(code: CellCode.a3, value: a3); self.b3 = Cell(code: CellCode.b3, value: b3)
        self.c3 = Cell(code: CellCode.c3, value: c3); self.d3 = Cell(code: CellCode.d3, value: d3)
        self.e3 = Cell(code: CellCode.e3, value: e3); self.f3 = Cell(code: CellCode.f3, value: f3)
        self.g3 = Cell(code: CellCode.g3, value: g3); self.h3 = Cell(code: CellCode.h3, value: h3)
        self.i3 = Cell(code: CellCode.i3, value: i3); self.a4 = Cell(code: CellCode.a4, value: a4)
        self.b4 = Cell(code: CellCode.b4, value: b4); self.c4 = Cell(code: CellCode.c4, value: c4)
        self.d4 = Cell(code: CellCode.d4, value: d4); self.e4 = Cell(code: CellCode.e4, value: e4)
        self.f4 = Cell(code: CellCode.f4, value: f4); self.g4 = Cell(code: CellCode.g4, value: g4)
        self.h4 = Cell(code: CellCode.h4, value: h4); self.i4 = Cell(code: CellCode.i4, value: i4)
        self.a5 = Cell(code: CellCode.a5, value: a5); self.b5 = Cell(code: CellCode.b5, value: b5)
        self.c5 = Cell(code: CellCode.c5, value: c5); self.d5 = Cell(code: CellCode.d5, value: d5)
        self.e5 = Cell(code: CellCode.e5, value: e5); self.f5 = Cell(code: CellCode.f5, value: f5)
        self.g5 = Cell(code: CellCode.g5, value: g5); self.h5 = Cell(code: CellCode.h5, value: h5)
        self.i5 = Cell(code: CellCode.i5, value: i5); self.a6 = Cell(code: CellCode.a6, value: a6)
        self.b6 = Cell(code: CellCode.b6, value: b6); self.c6 = Cell(code: CellCode.c6, value: c6)
        self.d6 = Cell(code: CellCode.d6, value: d6); self.e6 = Cell(code: CellCode.e6, value: e6)
        self.f6 = Cell(code: CellCode.f6, value: f6); self.g6 = Cell(code: CellCode.g6, value: g6)
        self.h6 = Cell(code: CellCode.h6, value: h6); self.i6 = Cell(code: CellCode.i6, value: i6)
        self.a7 = Cell(code: CellCode.a7, value: a7); self.b7 = Cell(code: CellCode.b7, value: b7)
        self.c7 = Cell(code: CellCode.c7, value: c7); self.d7 = Cell(code: CellCode.d7, value: d7)
        self.e7 = Cell(code: CellCode.e7, value: e7); self.f7 = Cell(code: CellCode.f7, value: f7)
        self.g7 = Cell(code: CellCode.g7, value: g7); self.h7 = Cell(code: CellCode.h7, value: h7)
        self.i7 = Cell(code: CellCode.i7, value: i7); self.a8 = Cell(code: CellCode.a8, value: a8)
        self.b8 = Cell(code: CellCode.b8, value: b8); self.c8 = Cell(code: CellCode.c8, value: c8)
        self.d8 = Cell(code: CellCode.d8, value: d8); self.e8 = Cell(code: CellCode.e8, value: e8)
        self.f8 = Cell(code: CellCode.f8, value: f8); self.g8 = Cell(code: CellCode.g8, value: g8)
        self.h8 = Cell(code: CellCode.h8, value: h8); self.i8 = Cell(code: CellCode.i8, value: i8)
        self.a9 = Cell(code: CellCode.a9, value: a9); self.b9 = Cell(code: CellCode.b9, value: b9)
        self.c9 = Cell(code: CellCode.c9, value: c9); self.d9 = Cell(code: CellCode.d9, value: d9)
        self.e9 = Cell(code: CellCode.e9, value: e9); self.f9 = Cell(code: CellCode.f9, value: f9)
        self.g9 = Cell(code: CellCode.g9, value: g9); self.h9 = Cell(code: CellCode.h9, value: h9)
        self.i9 = Cell(code: CellCode.i9, value: i9)
    }

    public static func fromFile(content: String) throws -> Puzzle {
        if (content.count != 167) {
            throw PuzzleError(message: "The .sudoku file is not formatted properly.")
        }

        return Puzzle(a1: content[16], b1: content[17], c1: content[18],
            d1: content[20], e1: content[21], f1: content[22], g1: content[24], h1: content[25], i1: content[26],
            a2: content[30], b2: content[31], c2: content[32], d2: content[34], e2: content[35], f2: content[36],
            g2: content[38], h2: content[39], i2: content[40], a3: content[44], b3: content[45], c3: content[46],
            d3: content[48], e3: content[49], f3: content[50], g3: content[52], h3: content[53], i3: content[54],
            a4: content[72], b4: content[73], c4: content[74], d4: content[76], e4: content[77], f4: content[78],
            g4: content[80], h4: content[81], i4: content[82], a5: content[86], b5: content[87], c5: content[88],
            d5: content[90], e5: content[91], f5: content[92], g5: content[94], h5: content[95], i5: content[96],
            a6: content[100], b6: content[101], c6: content[102], d6: content[104], e6: content[105], f6: content[106],
            g6: content[108], h6: content[109], i6: content[110], a7: content[128], b7: content[129], c7: content[130],
            d7: content[132], e7: content[133], f7: content[134], g7: content[136], h7: content[137], i7: content[138],
            a8: content[142], b8: content[143], c8: content[144], d8: content[146], e8: content[147], f8: content[148],
            g8: content[150], h8: content[151], i8: content[152], a9: content[156], b9: content[157], c9: content[158],
            d9: content[160], e9: content[161], f9: content[162], g9: content[164], h9: content[165], i9: content[166])
    }

    public func toList(groupType: GroupType, code: CellCode) -> [Cell] {
        var output: [Cell] = []

        for child in Mirror(reflecting: self).children {
            if let cell = child.value as? Cell {
                output.append(cell)
            }
        }

        return output
    }
}

struct PuzzleError: Error {
    let message: String
}

public enum GroupType {
    case Row, Column, Box
}