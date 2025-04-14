"""
백준 16401번 - 과자 나눠주기 - 이분탐색- 실버2
https://www.acmicpc.net/problem/16401

"""

#1. 입력받기 
M , N = map(int, input().split())
arr = sorted(list(map(int, input().split())))
ans = 0   # 정답 변수 
# 이분탐색용 변수
start = 1           # 과자의 길이는 최소 1
end = arr[-1]       # 과자의 최대 길이는 과자의 최대길이 

# 2. 이분탐색으로 최대 과자 길이 확인
while start <= end:
    cnt = 0             # 나눠줄수있는 명수
    mid = (start + end) // 2 # 나눠줄 과자 길이 

    # mid로 과자를 나누어주면 그 길이로 나누어줄수 있는 과자의 수가 나옴
    # 1,2,3 인 배열을 1로 나누면 3명한테 가능, 2로 나누면 2명한테 가능, 3으로 나누면 1명한테만 나누어줄수있음

    # mid(과자 길이)로 과자 배열에서 나눌 수 있는 명수 세기 
    for length in arr:
        cnt += (length// mid)   

    # 나누어 줄 수 있는 명수를 이용해 mid와 정답을 확인
    # 나누어줄수있는 명수가 주어진 조카의 수보다 크거나 같으면 
    # mid +1해서 mid를 최댓값으로 만들어줌 
    # mid가 아직 최소값일수있으니 다시 진행
    if cnt >= M:
        start = mid + 1
        ans = mid           # 여기서 mid(과자 길이) 갱신
    # 만약 나누어 줄수 있는 명수가 M보다 작게 되면 이제 mid를 하나씩 내려준다.
    else:
        end = mid -1

print(ans)
