def solution(t,r)

	tests = []
	blacklist = []

  t.each_with_index do |ele, index|
	  curr = ele.scan(/\d+/).first
		tests << curr
	  blacklist << curr if r[index] != 'OK'
	end

	tests = tests.uniq
	blacklist = blacklist.uniq

	passing = tests - blacklist

	p tests
	p blacklist
	p passing.count

	result = (passing.count * 100) / tests.count
	p result.floor

end

t = ['test1a', 'test2', 'test1b', 'test1c', 'test3', 'test4']

r = ['Wrong Answer', 'OK', 'Runtime error', 'OK', 'Time limit exceeded', 'OK']

solution(t,r)
