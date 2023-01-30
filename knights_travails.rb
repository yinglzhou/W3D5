class KnightPathFinder
    attr_reader :considered_positions
    def initialize(position)
        @position = position
        @considered_positions = [position]
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

    def new_positions(position)

        final_arr = []

        new_moves = KnightPathFinder.valid_moves(position)

        i = 0
            while( i < new_moves.length)
                if @considered_positions.include?(new_moves[i])
                   next 
                   i+=1
                else
                    @considered_positions.push(new_moves[i])
                end
                i+=1
            end

            return final_arr

    end






end


p knight = KnightPathFinder.new([0,0])
p KnightPathFinder.valid_moves([0,0])


p knight.considered_positions



