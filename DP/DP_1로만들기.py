"""
나코테 DP 1로 만들기 문제
"""


# 1로 만들기 


X = int(input())

dp = [0] * 30001

for i in range(2, X+1):
    # 1. 1을 빼는경우
    dp[i] = dp[i-1] + 1

    # 2. 2로 나눠지는 경우
    if i % 2 == 0:
        dp[i] = min(dp[i], dp[i//2] + 1)

    # 3. 3으로 나눠지는경우
    if i % 3 ==0 :
        dp[i] = min(dp[i], dp[i//3] + 1)

    # 4. 5로 나눠지는 경우
    if i % 5 == 0:
        dp[i] = min(dp[i], dp[i//5] + 1 )

print(dp[X])
