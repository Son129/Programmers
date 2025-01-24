def solution(array, commands):
    answer = []
    
    for [i,j,k] in commands: 
       b = sorted(array[i-1:j])
       answer.append(b[k-1])
    return answer