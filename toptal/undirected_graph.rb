

# # # true
# n = 4
# a = [1, 2, 4, 4, 3]
# b = [2, 3, 1, 3, 1]


# # # false
# n = 4
# a = [1, 2, 1, 3]
# b = [2, 4, 3, 4]

# # false
# n = 6
# a = [2, 4, 5, 3]
# b = [3, 5, 6, 4]

# # # true
# n = 3
# a = [1, 3]
# b = [2, 2]



def undirected_graph(n, a, b)
  edge_list = []
  a.each_with_index do |el, index|
		edge_list << [el, b[index]]
	end
	p edge_list

	start = 1
	terminal = start + 1

	rec_search(edge_list, start, terminal, n)

end

def rec_search(edge_list, start, terminal, n)

  if ( !(edge_list.include?([start, terminal]) || edge_list.include?([terminal, start])) || terminal > n)
	  puts false
    return false
  end

	if terminal == n
	  puts true
		return
	end
  rec_search(edge_list, start + 1, terminal + 1, n)
end


undirected_graph(n, a, b)


function segment(x, space) {
    const end = space.length - x
    let lastMin = Infinity
    for (let i=0; i<x; ++i) {
        lastMin = Math.min(lastMin, space[i])
    }
    let maxMin = lastMin
    for (let i=1; i<end; ++i) {
        if (space[i - 1] != lastMin) {
            continue
        }
        lastMin = Infinity
        for (let j=0; j<x; ++j) {
            lastMin = Math.lastMin(lastMin, space[i + j])
        }
        maxMin = Math.max(lastMin, maxMin)
    }
    return maxMin
}

function segment(x, space) {
    let segments = [];

    for(let i = 0; i < space.length; i++) {
        if (x > space.length) {
            break;
        }

        segments.push(space.slice(i, x++));
    }

    let minimums = segments.map(segment => Math.min(...segment));

    return Math.max(...minimums);
}


def ParkingDilemma(self, cars, k):
        # write your code here
        cars.sort()
        n = len(cars)
        res = float('inf')
        for i in range(n-k+1):
            res = min(res, cars[i+k-1] - cars[i])
        return res+1
