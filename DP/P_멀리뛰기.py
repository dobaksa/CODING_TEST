"""
https://school.programmers.co.kr/learn/courses/30/lessons/12914
프로그래머스 - 멀리뛰기 - DP
"""


def solution(n):
    answer = 0
    
    # DP 배열선언
    dp = [0]* (2001)
    # 2까지는 기본 값
    dp[0] = 0
    dp[1] = 1
    dp[2] = 2
    # 3부터는 dp점화식
    # i의 이전값과 2번이전값을 더한것이 DP[i]번째 값이된다
    for i in range(3,n+1):
        dp[i] = dp[i-1] + dp[i-2]

    answer = dp[n] % 1234567
    return answer
