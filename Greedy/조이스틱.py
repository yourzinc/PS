# 2022-10-28 2:17
# 프로그래머스 조이스틱 

def solution(name):
    answer = 0
    
    for idx, val in enumerate(name):
        answer = answer + min(ord(val)-ord('A'), ord('A')-ord(val)+26) 
        answer = answer + 1
        
    answer = answer -1
    
    return answer