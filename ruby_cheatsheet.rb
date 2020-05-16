ARRAYS
======
a = ['one', 'two']
a = Array.new(num_ele, inital_value)
a = Array.new(rows) { Array.new(cols) }

a.size
a.empty?
a.include?(e)
a.index(e)
a.uniq
a.sort
a.reverse
a.count(e)
a.min(num_mins)
a.max_by { |e| e.size }
a.join(delimiter) (ret string concat of elems)

a.push("y") == a << "y"
a.pop (deletes from end)
a.delete_at(0)
a.delete("x")
a.shift (shifts left)
a.unshift("x") (shifts right)

a[0..2] inclusive slice
a[0...2] exclusive slice
(0...2).to_a == [*(0..2)]

a.each do |ele|
a.each_index do |index|
a.each_with_index do |ele, index|
a.each_with_object(obj) do |ele, obj| (ret final obj)

a.map do |ele| (ret new arr)
a.select { |ele| ele.is_a? Symbol } (keep if bool true, ret new arr)
a.reject { |ele| ele.is_a? Symbol } 
a.reduce(inital_value, operator) (ret single val)

STRING
=======
str[0..1]
str.downcase
str.split(':')
str.reverse
str.size
str.include?(str)
str.index(str)
str.chomp (remove newline)
str.chop (remove last char)

str << str2
str.prepend(str2)
str.chars (ret arr)
str.count(str_of_chars)
.to_s
.to_i(base)

HASH
======
map = {1 => 'x', 2 => 'y'}
map = Hash.new(initial_value)
map = Hash.new { |h,k| h[k] = [] }
map[k] = v
map.has_key?(k)
map.has_value?(v)
map.key(v)
map.keys
map.delete(k)
map.invert
map.flatten (ret arr)

map.each_key do |key|
map.each_pair do |key,val|
map.select { |k,v| v > 0 } (keep if bool true, ret new hash)
map.to_a (ret nested arr)
map.sort_by { |k,v| v } (ret nested arr)

SET
=====
set = Set.new [1, 2]
set.add(e)
set.include?(e)
set.delete(e)
set.size
set.each do |e|

set.subset?(set2)
set.subtract(set2) (-)
set.intersection(set2) (&)
set.merge(set2) (|)

CLASS
======
module Entertainment
  require 'date'
  
  class Movie
    include Math # bring in module as instance meths
    extend Math # bring in module as class meths
    
    # vars private by default
    @@total_movies = 0 # class var (shared with super/subclasses)
    @last_added = nil # class instance var
    attr_accessor :name, :year # instance var
  
    def initialize(name, year)
      @name = name
      @year = year
      self.class.last_added = name
      @@total_movies += 1
    end
  	
    def self.last_added
      @last_added
    end
  
    def self.last_added=(name)
      @last_added = name
    end
  
    def self.total_movies
      @@total_movies
    end
    
    private 
    def private_method; end
  end
end

class.respond_to?("new")
class.is_a?(className)
class.instance_of?(className) # does not incl. subclasses

REGEX
========
^ starts with
$ ends with
. any char
* repeat (0+)
+ repeat (1+)
? (0 or 1 time)
[] or
( ) capturing

Regexp.new(/...../)
/pattern/.match("a string") (ret matchdata)
matchdata[n]
pattern =~ str (index of first match, $~ matchdata)
pattern !~ str (don't match)

str.scan(/pattern/)  (ret arr of matches)
str.gsub(/pattern/).to_a (ret arr of matches)
gsub(/pattern/, {'?' => '.'})
gsub(/./, '*')
gsub(/./) {|c| '*'}  

PROCS, LAMBDAS
======
l = lambda { puts "hello" }
l.call

p = Proc.new do |x|
  puts x*2
end
p.call(5)

BLOCKS
======
def foo(x)
  yield(x)
end
foo(5) {|x| puts x*2}

def bar(x, &block)
  block.call(x)
end
bar(5) {|x| puts x*2}

def baz(x)
  yield(x)
end
baz(5, &p)

THREADS
======
t = Thread.new { puts msg }
t = Thread.new { RunnableClass.new.run }
t.join
t.exit
Thread.kill(t)

LOCKS
======
lock = ::Monitor.new
lock.synchronize { puts msg }
semaphore = Mutex.new
semaphore.synchronize { puts msg }

out = (in < 0) ? 0 : in
carry() if raining?()
arr.pop unless arr.empty?

String interpolation
"#{1+1}" #2 
any OBJECT except (nil, false) is true

=begin
this is a
multi line comment
=end

$ ruby inventory.rb > out.txt
irb> load 'describe.rb'
irb> inv_array = File.open('inv.txt').readlines
old_env - new_env

ARGV[0]
if $0 == __FILE__
	..do something..
end
