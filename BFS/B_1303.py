"""
https://www.acmicpc.net/problem/1303

"""

from collections import deque

# 상 하 좌 우 
di = [-1, 1, 0, 0]
dj = [0, 0, -1, 1]



def bfs(si, sj, color):
    # 1. 큐 생성 
    q = deque()
    q.append((si, sj))   # 좌표, 병사 수 
    v[si][sj] = 1
    cnt = 1

    # 2. 큐 돌며 확인 
    while q:
        ci, cj = q.popleft()

        for k in range(4):
            ni = ci + di[k]
            nj = cj + dj[k]

            # 범위내, 미방문, 다음 위치의 컬러가 시작 노드의 컬러와 동일시 다음 위치를 
            # 다음위치를 큐에 저장하면서 방문 처리 및 병사수 확인
            if 0<= ni < M and 0<= nj < N and v[ni][nj] == 0 and arr[ni][nj] == color:
                q.append((ni, nj))
                v[ni][nj] = 1
                cnt +=1
    return cnt 


# N 가로, M 세로 
N, M = map(int, input().split())
arr = [list(input()) for _ in range(M)]
v = [[0] * N for _ in range(M)]

blue, white = 0, 0      # 정답용 병사 개수 


# 2. 전체 확인하며 blue와 white개수 확인 
# M세로, N 가로 
for i in range(M):
    for j in range(N):
        # 미방문, 색깔별로 확인
        if v[i][j] == 0:
            # 2-1. 지도의 색깔이 흰색 
            if arr[i][j] == 'W':
                w_s = bfs(i,j,'W')
                white += (w_s ** 2)

            # 2-2. 지도의 색깔이 파란색
            if arr[i][j] == 'B':
                w_b = bfs(i,j,'B')
                blue += (w_b ** 2)

# 흰색 내꺼, 블루 상대 
print(white, blue)
            




