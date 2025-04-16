"""
https://school.programmers.co.kr/learn/courses/30/lessons/12951
"""


def solution(s):
    answer = ''
    # 1. 입력을 공백 기준으로 나눈다
    s = s.lower().split(' ')
    ans = []
    
    # 2. 모든 단어를 하나씩 확인한다.
    for word in s:
        temp = ''
        # 3. 단어가 
        # 3-1. 단어의 첫문자가 알파벳이면 앞자리를 대문자로 만들어준다.
        if word.isalpha():
            temp = word[0].upper() + word[1:]
        # 3-2. 아니면 단어 그대로 
        else:
            temp = word
        ans.append(temp)
    # 단어를 공백으로 나누어준다.
    answer = ' '.join(ans)
    return answer
  
