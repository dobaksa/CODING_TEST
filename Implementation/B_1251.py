"""
https://www.acmicpc.net/problem/1251

백준 - 단어나누기 - 구현 - 실버 5

"""


# 문자를 3 단어로 나누어야함
# 방식은 다음과 같음
"""
1. 제시된 단어를 세단어로 나누기 => 2가지 위치를 잡아서 완전탐색
2. 각 단어를 뒤집기 => 문자열 뒤집기 하면 댐
3. 합치기 => 합치면 끝
4. 이렇게 만들어진 단어 중 사전순으로 가장 앞쪽의 단어를 출력=> sort하면댐
=> 단어 저장해놓을 리스트필요
"""


arr = input()
lst = []        # 단어 저장용 배열 
ans = set()
# 1. 제시된 단어 3단어로 나누기 
N = len(arr)

# 단어의 길이는 1이상이므로 나누어질 포인트가 무조건 1이상부터 
for i in range(1, N-2):
    for j in range(2, N):
        if i == j or j <= i:
            continue
        else:
            a_1 = arr[0:i]
            a_2 = arr[i:j]
            a_3 = arr[j:]
            
            # 2. 각 단어를 뒤집기 
            r_1 = a_1[::-1]
            r_2 = a_2[::-1]
            r_3 = a_3[::-1]

            # 3. 세 단어 합치기 
            temp = r_1 + r_2 + r_3
            
            # 4. 단어 저장
            ans.add(temp)



aa = sorted(ans)
print(aa[0])

