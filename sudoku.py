# sudoku board

# Goals:
# 1. loop through board, find an empty space (index with 0 value)
# 2. try every number until number that will satisfy sudoku game rules is found
# 3. repeat step 1 and 2 until unable space that is unable to satisfy game rules are found
# 4. use backtrack algorithm to fix previous mistakes until last empty space is able to satisfy game rules 

board = [
    [7,8,0,4,0,0,1,2,0],
    [6,0,0,0,7,5,0,0,9],
    [0,0,0,6,0,1,0,7,8],
    [0,0,7,0,4,0,2,6,0],
    [0,0,1,0,5,0,9,3,0],
    [9,0,4,0,6,0,0,0,5],
    [0,7,0,3,0,0,0,1,2],
    [1,2,0,0,0,7,4,0,0],
    [0,4,9,2,0,6,0,0,7]
]

def print_board(bo):
    # after every 3 rows, print a horizontal line 
    for i in range(len(bo)):
        if i % 3 == 0 and i != 0:
            print("- - - - - - - - - - - - ")
    # every 3rd column print a vertical line
        for j in range(len(bo[0])):
            if j % 3 == 0 and j != 0:
                # dont newline after print
                print(" | ", end="")

                # newline at end of board
            if j == 8:
                print(bo[i][j])
            else:
                # dont newline after print
                print(str(bo[i][j]) + " ", end="")

print_board(board)


def find_empty(bo):
    # loop through board, find first empty space
    for i in range(len(bo)):
        for j in range(len(bo[0])):
            if bo[i][j] == 0:
                return (i,j) # i = row, j = column aka (y,x)