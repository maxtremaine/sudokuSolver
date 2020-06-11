public struct Cell {
    var code: CellCode
    public var value: Character
    var col: Column {
        get {
            return Column.a
        }
    }
    var row: Int {
        get {
            return 1
        }
    }
    var box: Box {
        get {
            return Box.b2
        }
    }
    var freedom: Int {
        get {
            return 1
        }
    }

    public init(code: CellCode, value: Character) {
        self.code = code
        self.value = value
    }

    public static func fromSomething() -> Cell {
        return Cell(code: CellCode.a1, value: "1")
    }

    public static func doStuff() {
        for col in Box.allCases {
            print(col)
        }
    }
}

enum Column: CaseIterable {
    case a, b, c, d, e, f, g, h, i
}

enum Box: CaseIterable {
    case b2, e2, h2, b5, e5, h5, b8, e8, h8
}

public enum CellCode {
    case a1, b1, c1, d1, e1, f1, g1, h1, i1, a2, b2, c2, d2, e2, f2, g2, h2, i2, a3, b3, c3,
        d3, e3, f3, g3, h3, i3, a4, b4, c4, d4, e4, f4, g4, h4, i4, a5, b5, c5, d5, e5, f5, g5, h5, i5,
        a6, b6, c6, d6, e6, f6, g6, h6, i6, a7, b7, c7, d7, e7, f7, g7, h7, i7, a8, b8, c8, d8, e8, f8,
        g8, h8, i8, a9, b9, c9, d9, e9, f9, g9, h9, i9
}