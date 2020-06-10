public struct Cell {
    var code: String
    var col: Character
    var row: Int
    var box: String
    var value: Int
    var freedom: Int

    init(code: String, col: Character, row: Int, box: String, value: Int, freedom: Int) {
        self.code = code
        self.col = col
        self.row = row
        self.box = box
        self.value = value
        self.freedom = freedom
    }
}