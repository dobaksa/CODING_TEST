"""
https://www.acmicpc.net/problem/16987
백준 - 계란으로 계란치기 - 골드5- 백트래킹, 구현
"""




# dfs함수
# n은 계란 번호, cnt는 깨진 계란 개수 
def dfs(n, cnt):
    global ans 

    # 1. 종료조건 
    # 마지막 계란 까지 갔으면 종료
    if n == N:
        ans = max(ans, cnt)
        return 

    # 2. 내 계란이 이미 깨진 경우
    # 다음 계란으로 넘긴다.
    if arr[n][0] <= 0:
        dfs(n+1, cnt)

    # 3. 내 계란이 아직 안깨진 경우 
    # 다른 계란을 한번씩 확인해서 깨본다
    else:
        flag = 0                # 계란 깨기 플래그 0: 계란 한개도 못깸, 1: 계란깸
        # 전체 계란을 확인해본다
        for i in range(0, N):
            
            # 4. 계란을 확인하면서 못깨는 경우
            # 지금 위치가 내 계란이면 못깸, 계란이 이미 깨져있으면 못깸
            if n == i or arr[i][0] <=0:
                continue

            # 여기로 나오면 깨질 계란 한개라도 있다는 뜻
            flag = 1        # 계란 깻음 플래그 생성
            # 5. 계란 깨기 시작 
            arr[n][0] -= arr[i][1]      # 내 계란 내구도 
            arr[i][0] -= arr[n][1]      # 상대 계란 내구도 
            egg = 0 
            # 5-1. 내 계란 깨졋으면 개수 증가
            if arr[n][0] <= 0:
                egg +=1
            # 5-2. 상대 계란 깨졋으면 개수 증가
            if arr[i][0] <= 0:
                egg +=1
            
            # 6. 계란 깻으니 다음 단계 진행
            dfs(n+1, cnt + egg)

            # 7. 깨진 계란 복구 
            arr[n][0] += arr[i][1]      # 내 계란 내구도 
            arr[i][0] += arr[n][1]      # 상대 계란 내구도 
        
        # 8. 모든 계란 다 확인햇는데 못깬경우
        # 깰 수 있는 계란이 없으므로 다음 계란으로 넘겨야함
        if flag == 0:
            dfs(n+1, cnt)


# 1. 입력받기 
N = int(input())
arr = [list(map(int, input().split())) for _ in range(N)]
ans = 0     # 정답 변수 

dfs(0, 0)

print(ans)



