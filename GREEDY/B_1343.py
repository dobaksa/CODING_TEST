""" 백준
    1343번 폴리오미노
    
 """

# 폴리오미노 2개
arr = ['AAAA', 'BB']

# board input 조건
# 'X' 또는 '.'으로 구성
# 가다가 'X' 2개면 바로 B로 채우기, 4개면 'A'로 

board = input()


board = board.replace("XXXX","AAAA")
board = board.replace("XX","BB")

if "X" in board:
    print(-1)
else:
    print(board)