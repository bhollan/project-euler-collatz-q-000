def even_next(n)
  return n/2
end

def odd_next(n)
  return (3*n) + 1
end

def next_value(n)
  return n%2==0 ? even_next(n) : odd_next(n)
end

def collatz(n)
  latz = Array.new()
  while n!=1
    latz.push(n)
    n = next_value(n)
  end
  latz.push(n)
  return latz
end

def longest_collatz
  million = (1..1e6).to_a
  million = million.map{|a| collatz(a)}
  million = million.map{|a| a.length}
  index = million.rindex(million.max)
  return index+1
end
