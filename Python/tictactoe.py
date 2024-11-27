import math

# Initialize the Tic-Tac-Toe board
board = [[' ' for _ in range(3)] for _ in range(3)]

# Function to print the board
def print_board(board):
    for row in board:
        print('|'.join(row))
        print("-" * 5)

# Check if the board is full
def is_board_full(board):
    for row in board:
        if ' ' in row:
            return False
    return True

# Check for a winner
def check_winner(board):
    # Check rows, columns, and diagonals for a win
    for i in range(3):
        if board[i][0] == board[i][1] == board[i][2] != ' ':
            return board[i][0]
        if board[0][i] == board[1][i] == board[2][i] != ' ':
            return board[0][i]
    if board[0][0] == board[1][1] == board[2][2] != ' ':
        return board[0][0]
    if board[0][2] == board[1][1] == board[2][0] != ' ':
        return board[0][2]
    return None

# Minimax function for AI
def minimax(board, depth, is_maximizing):
    # Base case: check for terminal states
    winner = check_winner(board)
    if winner == 'O':
        return 1
    elif winner == 'X':
        return -1
    elif is_board_full(board):
        return 0

    # Maximizing player (AI)
    if is_maximizing:
        best_score = -math.inf
        for i in range(3):
            for j in range(3):
                if board[i][j] == ' ':
                    board[i][j] = 'O'
                    score = minimax(board, depth + 1, False)
                    board[i][j] = ' '
                    best_score = max(score, best_score)
        return best_score

    # Minimizing player (Human)
    else:
        best_score = math.inf
        for i in range(3):
            for j in range(3):
                if board[i][j] == ' ':
                    board[i][j] = 'X'
                    score = minimax(board, depth + 1, True)
                    board[i][j] = ' '
                    best_score = min(score, best_score)
        return best_score

# AI move function
def best_move(board):
    best_score = -math.inf
    move = (0, 0)
    for i in range(3):
        for j in range(3):
            if board[i][j] == ' ':
                board[i][j] = 'O'
                score = minimax(board, 0, False)
                board[i][j] = ' '
                if score > best_score:
                    best_score = score
                    move = (i, j)
    board[move[0]][move[1]] = 'O'

# Function for player's move
def player_move(board):
    while True:
        try:
            row, col = map(int, input("Enter row and column (1-3) for X (e.g., 1 1 for top-left): ").split())
            row, col = row - 1, col - 1
            if board[row][col] == ' ':
                board[row][col] = 'X'
                break
            else:
                print("Cell is already occupied. Choose another.")
        except (ValueError, IndexError):
            print("Invalid input. Enter numbers between 1 and 3.")

# Main game loop
def play_game():
    print("Welcome to Tic-Tac-Toe!")
    print_board(board)

    while True:
        # Player's turn
        player_move(board)
        print_board(board)
        if check_winner(board) == 'X':
            print("You win!")
            break
        elif is_board_full(board):
            print("It's a tie!")
            break

        # AI's turn
        print("AI is making a move...")
        best_move(board)
        print_board(board)
        if check_winner(board) == 'O':
            print("AI wins!")
            break
        elif is_board_full(board):
            print("It's a tie!")
            break

# Run the game
play_game()

# Output:
# Welcome to Tic-Tac-Toe!
# | | |  
# -----
# | | |  
# -----
# | | |  
# Enter row and column (1-3) for X (e.g., 1 1 for top-left): 1 1
# X| |  
# -----
# | | |  
# -----
# | | |  
# AI is making a move...
# X| |  
# -----
# |O|  
# -----
# | | |  
# Enter row and column (1-3) for X (e.g., 1 1 for top-left): 2 2
# Cell is already occupied. Choose another.
# Enter row and column (1-3) for X (e.g., 1 1 for top-left): 2 1
# X| |  
# -----
# X|O|  
# -----
# | | |  
# AI is making a move...
# X| |  
# -----
# X|O|  
# -----
# O| |  
# Enter row and column (1-3) for X (e.g., 1 1 for top-left): 1 2
# X|X|  
# -----
# X|O|  
# -----
# O| |  
# AI is making a move...
# X|X|O
# -----
# X|O|  
# -----
# O| |  
# AI wins!
# === Code Execution Successful ===
