def solution(money):
    
    i = int(money/5500)
    j = money%5500
    answer = [i, j]
    return answer