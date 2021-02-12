def angryProfessor(k, a)
    num_on_time = 0
    a.each { |x| num_on_time += 1 if x <= 0  }
    return 'YES' if num_on_time < k
    return 'NO'
end
