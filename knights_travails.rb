class KnightPathFinder
    def initialize(position)
        @position = position
        @considered_positions = []
    end

    def self.valid_moves(position)
        moves = [
            [-1, -2],
            [1, -2],
            [-1, 2],
            [1, 2],
            [-2, 1],
            [-2, -1],
            [2, -1],
            [2, 1]
        ]
        row, col = position
        valid_move_arr = []

        moves.each do |pair|
            row_change = pair[0]
            col_change = pair[1]

            new_row = row + row_change
            new_col = col + col_change

            if new_row >= 0 && new_col >= 0
                valid_move_arr << [new_row, new_col]
            end
        end
        valid_move_arr
    end






end

p knight1 = KnightPathFinder.new([0,0])
p KnightPathFinder.valid_moves([2, 1])