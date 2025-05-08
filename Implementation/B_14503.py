from collections import deque

# 북 동 남 서
di = [-1, 0, 1 ,0]
dj = [0, 1, 0, -1]

# 반대 방향 벡터0  1  2  3
reverse_dir = [2, 3, 0, 1]

# bfs함수
def bfs(si, sj, sd):
    global cnt
    q = deque()
    q.append((si, sj, sd))

    while q:
        ci, cj, cd = q.popleft()
        
        # 1. 현재칸이 아직 청소되지 않은 칸인 경우, 현재칸 청소
        if arr[ci][cj] == 0:
            arr[ci][cj] = 2      # 청소하면 2
            cnt +=1

        
        # 주변 4칸 확인
        # 4번 방향을 돌았는데 turn이 4 이면 청소할 수 있는 칸이 없다는 뜻
        turn = 0        # 4번 방향전환을 하기 위한 변수
        temp_cd = cd    # 방향 변환용 변수 세팅(현재 방향은 보존)

        # 주변 4칸 확인
        # 문제조건 3번 먼저시작, 빈칸이 있는 경우를 먼저처리
        # 그 이후 2번 청소할 빈칸이 없는 경우 처리
        for k in range(4):
            # 3번. 청소할 빈 칸이 있는 경우
            # 3-1. 반시계 회전한다
            nd = (temp_cd + 3) % 4
            ni = ci + di[nd]
            nj = cj + dj[nd]
            temp_cd = nd        # 돌았으면 다음 돈 위치 갱신 

            # 범위내인경우
            if 0 <= ni < N and 0 <= nj < M:
                # 3-2. 앞쪽 칸이 빈칸인 경우 전진
                if arr[ni][nj] == 0:
                    q.append((ni, nj, nd))
                    # 3-3. 1번으로 돌아간다
                    break
                else:
                    turn +=1        # 아닌 경우 돌기만 하기 

        # 2번 조건 청소할 빈 칸이 없는 경우
        if turn == 4:
            rd = reverse_dir[cd]        # 현재 방향의 반대 방향 확인
            ri = ci + di[rd]
            rj = cj + dj[rd]

            # 범위내 
            if 0 <= ri < N and 0 <= rj < M:

                # 2-2. 뒤쪽이 벽이면 작동멈춤
                if arr[ri][rj] == 1:
                    return
                else:
                    q.append((ri,rj,cd))        # 뒤쪽 위치이지만, 바라보는 방향은 그대로




# 메인동작
N, M = map(int, input().split())    # 세로, 가로
r, c, d = map(int, input().split()) 
arr = [list(map(int, input().split())) for _ in range(N)]
cnt = 0         # 정답 변수 

bfs(r,c,d)


print(cnt)

