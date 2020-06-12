public struct Cell {
    public var code: CellCode
    public var value: Character
    public var freedom: Int
    public var col: Column {
        get {
            switch self.code {
                case CellCode.a1, CellCode.a2, CellCode.a3, CellCode.a4, CellCode.a5,
                    CellCode.a6, CellCode.a7, CellCode.a8, CellCode.a9:
                    return Column.a
                case CellCode.b1, CellCode.b2, CellCode.b3, CellCode.b4, CellCode.b5,
                    CellCode.b6, CellCode.b7, CellCode.b8, CellCode.b9:
                    return Column.b
                case CellCode.c1, CellCode.c2, CellCode.c3, CellCode.c4, CellCode.c5,
                    CellCode.c6, CellCode.c7, CellCode.c8, CellCode.c9:
                    return Column.c
                case CellCode.d1, CellCode.d2, CellCode.d3, CellCode.d4, CellCode.d5,
                    CellCode.d6, CellCode.d7, CellCode.d8, CellCode.d9:
                    return Column.d
                case CellCode.e1, CellCode.e2, CellCode.e3, CellCode.e4, CellCode.e5,
                    CellCode.e6, CellCode.e7, CellCode.e8, CellCode.e9:
                    return Column.e
                case CellCode.f1, CellCode.f2, CellCode.f3, CellCode.f4, CellCode.f5,
                    CellCode.f6, CellCode.f7, CellCode.f8, CellCode.f9:
                    return Column.f
                case CellCode.g1, CellCode.g2, CellCode.g3, CellCode.g4, CellCode.g5,
                    CellCode.g6, CellCode.g7, CellCode.g8, CellCode.g9:
                    return Column.g
                case CellCode.h1, CellCode.h2, CellCode.h3, CellCode.h4, CellCode.h5,
                    CellCode.h6, CellCode.h7, CellCode.h8, CellCode.h9:
                    return Column.h
                case CellCode.i1, CellCode.i2, CellCode.i3, CellCode.i4, CellCode.i5,
                    CellCode.i6, CellCode.i7, CellCode.i8, CellCode.i9:
                    return Column.i
            }
        }
    }
    public var row: Int {
        get {
            switch self.code {
                case CellCode.a1, CellCode.b1, CellCode.c1, CellCode.d1, CellCode.e1,
                    CellCode.f1, CellCode.g1, CellCode.h1, CellCode.i1:
                    return 1
                case CellCode.a2, CellCode.b2, CellCode.c2, CellCode.d2, CellCode.e2,
                    CellCode.f2, CellCode.g2, CellCode.h2, CellCode.i2:
                    return 2
                case CellCode.a3, CellCode.b3, CellCode.c3, CellCode.d3, CellCode.e3,
                    CellCode.f3, CellCode.g3, CellCode.h3, CellCode.i3:
                    return 3
                case CellCode.a4, CellCode.b4, CellCode.c4, CellCode.d4, CellCode.e4,
                    CellCode.f4, CellCode.g4, CellCode.h4, CellCode.i4:
                    return 4
                case CellCode.a5, CellCode.b5, CellCode.c5, CellCode.d5, CellCode.e5,
                    CellCode.f5, CellCode.g5, CellCode.h5, CellCode.i5:
                    return 5
                case CellCode.a6, CellCode.b6, CellCode.c6, CellCode.d6, CellCode.e6,
                    CellCode.f6, CellCode.g6, CellCode.h6, CellCode.i6:
                    return 6
                case CellCode.a7, CellCode.b7, CellCode.c7, CellCode.d7, CellCode.e7,
                    CellCode.f7, CellCode.g7, CellCode.h7, CellCode.i7:
                    return 7
                case CellCode.a8, CellCode.b8, CellCode.c8, CellCode.d8, CellCode.e8,
                    CellCode.f8, CellCode.g8, CellCode.h8, CellCode.i8:
                    return 8
                case CellCode.a9, CellCode.b9, CellCode.c9, CellCode.d9, CellCode.e9,
                    CellCode.f9, CellCode.g9, CellCode.h9, CellCode.i9:
                    return 9
            }
        }
    }
    public var box: Box {
        get {
            switch self.code {
                case CellCode.a1, CellCode.b1, CellCode.c1, CellCode.a2, CellCode.b2,
                    CellCode.c2, CellCode.a3, CellCode.b3, CellCode.c3:
                    return Box.b2
                case CellCode.d1, CellCode.e1, CellCode.f1, CellCode.d2, CellCode.e2,
                    CellCode.f2, CellCode.d3, CellCode.e3, CellCode.f3:
                    return Box.e2
                case CellCode.g1, CellCode.h1, CellCode.i1, CellCode.g2, CellCode.h2,
                    CellCode.i2, CellCode.g3, CellCode.h3, CellCode.i3:
                    return Box.h2
                case CellCode.a4, CellCode.b4, CellCode.c4, CellCode.a5, CellCode.b5,
                    CellCode.c5, CellCode.a6, CellCode.b6, CellCode.c6:
                    return Box.b5
                case CellCode.d4, CellCode.e4, CellCode.f4, CellCode.d5, CellCode.e5,
                    CellCode.f5, CellCode.d6, CellCode.e6, CellCode.f6:
                    return Box.e5
                case CellCode.g4, CellCode.h4, CellCode.i4, CellCode.g5, CellCode.h5,
                    CellCode.i5, CellCode.g6, CellCode.h6, CellCode.i6:
                    return Box.h5
                case CellCode.a7, CellCode.b7, CellCode.c7, CellCode.a8, CellCode.b8,
                    CellCode.c8, CellCode.a9, CellCode.b9, CellCode.c9:
                    return Box.b8
                case CellCode.d7, CellCode.e7, CellCode.f7, CellCode.d8, CellCode.e8,
                    CellCode.f8, CellCode.d9, CellCode.e9, CellCode.f9:
                    return Box.e8
                case CellCode.g7, CellCode.h7, CellCode.i7, CellCode.g8, CellCode.h8,
                    CellCode.i8, CellCode.g9, CellCode.h9, CellCode.i9:
                    return Box.h8
            }
        }
    }

    public init(_ code: CellCode, value: Character) {
        self.code = code
        self.value = value
        self.freedom = 0
    }
}

public enum CellCode {
    case a1, b1, c1, d1, e1, f1, g1, h1, i1, a2, b2, c2, d2, e2, f2, g2, h2, i2, a3, b3, c3,
        d3, e3, f3, g3, h3, i3, a4, b4, c4, d4, e4, f4, g4, h4, i4, a5, b5, c5, d5, e5, f5, g5, h5, i5,
        a6, b6, c6, d6, e6, f6, g6, h6, i6, a7, b7, c7, d7, e7, f7, g7, h7, i7, a8, b8, c8, d8, e8, f8,
        g8, h8, i8, a9, b9, c9, d9, e9, f9, g9, h9, i9
}

public enum Column: CaseIterable {
    case a, b, c, d, e, f, g, h, i
}

public enum Box: CaseIterable {
    case b2, e2, h2, b5, e5, h5, b8, e8, h8
}