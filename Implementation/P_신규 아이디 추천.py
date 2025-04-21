"""
https://school.programmers.co.kr/learn/courses/30/lessons/72410
"""


def solution(new_id):
    answer = ''

    # 1 단계 => 소문자 변경
    t_1 = new_id.lower()

    # 2. 2단계판별 숫자(48~57)
    t_2 = ''
    for t in t_1:
        if t.isalpha() or t.isdigit() or t == '-' or t == '_' or t =='.':
            t_2 += t


    # 3. 연속되는 .판별
    t_3 = ''
    if len(t_2) == 1:
        t_3 = t_2
    else:
        t_3 = t_2[0]
        for i in range(1, len(t_2)):
            if t_2[i] == '.' and t_2[i] == t_2[i-1]:
                continue
            else:
                t_3 += t_2[i]


    # 4. 단계
    t_4 = t_3
    # 4-1. 문자 길이가 0이면 빈칸
    if len(t_4) == 0:
        t_4 = ''
    # 4-1. 문자길이가 1이고, 그 문자가 '.'이면 빈칸
    elif len(t_4) == 1:
        if t_4[0] == '.':
            t_4 = ''
    # 4-2. 문자길이가 2 이상일때
    else:
        # 4-2-1. 맨앞 문자가 '.'일때 지우기
        if t_4[0] == '.':
            t_4 = t_4[1:]
        
        # 4-2-1. 맨뒤 문자가 '.'일때 지우기 
        if t_4[-1] == '.':
            t_4 = t_4[:-1]
    # 5단계
    t_5 = ''
    if len(t_4) == 0:
        t_5 = 'a'
    else:
        t_5 = t_4

    
    # 6단계
    t_6 = ''
    # 6-1. 길이가 16이상이면 첫 15개까지만 확인
    if len(t_5) >= 16:
        t_6 = t_5[:15]
        # 만약 맨뒤 에 . 이있으면 자르기
        if t_6[-1] == '.':
            t_6 = t_6[:14]
    else:
        t_6 = t_5

    
    # 7단계 
    t_7 = t_6
    if len(t_6) <= 2:

        while len(t_7) < 3:
            t_7 += t_6[-1]

        
    answer = t_7
    return answer
