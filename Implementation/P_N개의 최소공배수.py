"""
https://school.programmers.co.kr/learn/courses/30/lessons/12953

프로그래머스 연습문제 - N개의 최소공배수- 구현? 

"""


def solution(arr):
    answer = 1
    d = {}          # 전체 최소공배수 배열
    
    # 숫자 하나의 공배수 전체찾기
    for num in arr:
        temp = num
        lst = {}        # 숫자의 공배수 배열
        i = 2
        
        # 공배수 찾기
        while temp >= i:
            if temp % i == 0:
                if i not in lst:
                    lst[i] = 1
                else:
                    lst[i] += 1
                temp = temp // i
            else:
                i+=1
        # 모든 공배수 확인해서 전체 공배수와 비교        
        for (val, count) in lst.items():
            # 전체 공배수의 숫자가 없으면 그대로 넣고
            if val not in d:
                d[val] = count
            # 전체 공배수에 숫자가 있으면 그 공배수의 최댓값 갱신
            else:
                d[val] = max(d[val], count)
                
    # 최소공배수 구하기            
    for (val, count) in d.items():
        answer = answer * (val ** count)
        
    return answer
