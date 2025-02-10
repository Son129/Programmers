def solution(slice, n):
    answer = [i for i in range(n+1) if slice*i/n >=1 ]
       
    return min(answer)