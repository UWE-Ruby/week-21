## The Monkey in the Jungle

Monkey-patching is a powerful tool in Ruby at your disposal. And ["with great power comes great responsibility"](http://en.wikipedia.org/wiki/Uncle_Ben#.22With_great_power_comes_great_responsibility.22). It gets a bad name because of the often unintended confusion and damage that it can cause within your own code and code other people have implemented. 


### Exercise

The objective of the exercise is to accomplish the following:

#### Understand the Problem

First and foremost is to understand how you can monkey-patch.

Implement a new `#empty?` method on [String](http://rubydoc.info/stdlib/core/1.9.3/String) which returns `true` when the string contains no characters or all whitespace characters; returning `false` otherwise.

During the first part of the exercise spend some time discussing and implementing a few solutions that employ monkey-patching.

#### Address the Problem

The second objective is to take your initial implementations and re-implement or supplement your implementation so that it done more **safely**. Discuss what you might do to make your implementation more **safe**.

### Exercise Retrospective

Ruby provides a few ways to monkey-patch because of it's Open Classes. Discuss what you liked and disliked about your implementations.

Would you change your solution in the follow circumstances:

* overriding Ruby's core functionality
* appending a new method on a prominent class in the Ruby's core language
* appending a new method on a not so prominent class in the Ruby's core language

Would your solution change if this code lived in a different context?

* A command-line tool
* A background application
* A Rails application
* A Ruby gem
* A one-off script
* A project with few dependencies
* A project with many dependencies

### Further Exercise

The solution of this exercise only requires that you implement one method method for one class. How might you develop a solution that allows you to more easily monkey-patch any class with any method with the same safety strategy?

### Reading

* Ruby Metaprogramming pages 27 - 47
* Ruby Metaprogramming pages 152 - 156
* Ruby Metaprogramming pages 232 - 237


