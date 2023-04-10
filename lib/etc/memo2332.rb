random_number = (rand(5) + 1)
random_number.times { puts "foo" }

def foo(a, **param)
  puts a
  puts param
end

foo("foo",{"a":"b","c":"d"})


def print_list_of(**g)
  puts g
  # books_and_articles.each do |book, article|
  #   puts book
  #   puts article
  # end
end
# As an argument, we define a hash in which we will write books and articles.
books_and_articles_we_love = {
  rr: "What is webpack?"
}
print_list_of(rr: "What is webpack?", gg: "What is webpack?")


def testing(a, b = 1, *c, d: 1, **x)
  p a,b,c,d,x
end
testing('a', 'b', 'c', 'd', 'e', d: 2, xx: 1)

def foo(k: 1)
  p k
end

h = { k: 42, }
foo(**h)


puts ['1','2','3'][rand(3)]

p 1%3
p 2%3
p 3%3
p 4%3
p 5%3

hash0 = { a: "a", b: "b", c: nil }.compact
p hash0

p 58153%3