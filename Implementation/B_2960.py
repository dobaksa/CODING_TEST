"""
https://www.acmicpc.net/problem/2960

백준 2960 - 에라토스테네스의 체 - 실버4 
시간 20분

"""

# 소수 판별 함수 

def isprime(n):
    temp = int(n ** (1/2))

    for i in range(1, temp):
        if n % i ==0:
            return False
        
    return True


N, K = map(int,input().split())
arr = []                                # 숫자배열
# 숫자배열 넣기 
for i in range(2, N+1):
    arr.append(i)
ans = 0
# 지우기 시작
while True:
    if K == 0:
        break
    # 2. 가장 작은수 찾기 => 항상 소수 why? 배수는 다 지우기 때문에
    num = arr[0]
    del_arr = []
    # 3. 지울 숫자 배열 세팅
    for j in range(0,len(arr)):
        if arr[j] % num == 0:
            del_arr.append(arr[j])
    # 3-2. 하나씩 지우기
    for val in del_arr:
        arr.remove(val)
        K -=1
        # 4. 지우다가 K가 0 이되는 지점이 답
        if K == 0:
            ans = val
            break


print(ans)
