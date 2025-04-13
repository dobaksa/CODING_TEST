"""
https://www.acmicpc.net/problem/17413
백준 17413 단어 뒤집기 2 - 실버3 

"""


# 조건 이뭐가있을까
# 1. 그냥 단어만 있을경우
# 2. <로 시작해서 >로 끝나는 경우
# 3. < + 공백 + 알파벳 + > 로 끝나는 경우 

# 1의 경우 단어를 뒤로 바꿔서 대입
# 2,3의 경우 단어 그대로 대입
# 근데 끝임을 어떻게 판단? flag를 하나 두고 <가 존재하는지를 판다
# <가 들어오면 flag를 1로 바꿔서 >가 나올때까진 단어로 취급 x
# 그게 아닌 공백이 들어오면 flag가 1이아니면 단어를 뒤집음

# 단어의 끝을 판별하는 경우 




arr = input()
ans = []
temp = ''
not_flag = 0        # 괄호 플래그 0: 괄호 단어 아님 , 1: 괄호 단어임

for i in range(len(arr)):
    temp += arr[i]
    # 1. 끝인지 판단 (괄호 단어 여부)
    if i == len(arr)-1:
            # 1-1. 괄호 단어일때
            if arr[i] == '>' and not_flag == 1:
                  ans.append(temp)
            # 1-2. 괄호단어가 아닐때 
            else:
                  ans.append(temp[::-1])
    else:
        # 2. 들어온 입력이 괄호인지 판단
        if arr[i] == '<':
            # 2-1. 이전 값이 있으면 판단
            if len(temp) > 1:
                    # 2-1-1. 괄호단어였으면 그냥 저장
                    if not_flag == 1:
                        ans.append(temp[0:-1])
                    else:
                        ans.append(temp[-2::-1])
                    temp = '<'
                    not_flag = 1
            else:
                not_flag = 1
        # 3. 괄호가 아님 (>, 공백, 일반 문자)
        else:
            # 4-1 들어온 입력이 '>'인 경우
            # 한단어의 끝이므로 정답에 지금까지 문자 대입후 temp, 플래그 새로 처리
            if arr[i] == '>':
                ans.append(temp)
                temp = ''
                not_flag = 0
            # 4-2 들어온 입력이 ' '인 경우
            elif arr[i] == ' ':
                # 5 단어가 끝인지 확인 
                # 5-1. flag가 0이면 일반단어이므로 뒤집어서 저장
                if not_flag == 0:
                    ans.append(temp[-2::-1] + ' ')
                    temp = ''
                # 5-2. flag가 1인경우 앞에 < 가 앞에 있다는 뜻 
                # 그냥 추가 하고 아무것도 없이 넘어가기 
                else:
                    continue
            # 4-3. 일반 문자인 경우 단어이므로 그냥 추가
            else:
                continue
              
for word in ans:
    print(word, end='')
