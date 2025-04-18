"""
https://www.acmicpc.net/problem/17271
백준 17271번 리그 오브 레전설 (Small) - 실버2 - DP
"""

N, M = map(int, input().split())


div_num = 1000000007


dp = [0] * (N + 1)

dp[0] = 1
dp[1] = 1

for i in range(2, N+1):
    if i < M:
        dp[i] = dp[i-1] % div_num
    else:
        dp[i] =  (dp[i-1] + dp[i-M])% div_num

print(dp[N])
