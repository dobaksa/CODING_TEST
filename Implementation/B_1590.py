# 1.

"""
https://www.acmicpc.net/problem/1590

백준 1590- 캠프가는 영식 - 실버4 구현

"""


N, T = map(int,input().split())
ans =  1000001 

for i in range(N):
    arr = []
    
    s, l, c = map(int, input().split())

    arr.append(s)
    # 버스 배열 만들기 
    for num in range(1, c):
        arr.append(s + (l *num))

    # 버스 출발 시간 하나씩 확인
    for time in arr:
        # 만약 도착시간보다 큰 버스출발시간을 만나면
        if time >= T:
            # 정답 갱신
            ans = min(ans, time-T)

if ans == 1000001:
    print(-1)
else:

    print(ans)


