## The Monkey in the Jungle

Monkey-patching is a powerful tool in Ruby at your disposal. And ["with great power comes great responsibility"](http://en.wikipedia.org/wiki/Uncle_Ben#.22With_great_power_comes_great_responsibility.22). It gets a bad name because of the often unintended confusion and damage that it can cause within your own code and code other people have implemented. 


### Exercise

The objective of the exercise is to accomplish the following:

#### Understand the Problem

First and foremost is to understand how you can monkey-patch.

Implement a new `#empty?` method on
[String](http://rubydoc.info/stdlib/core/1.9.3/String) which returns `true` when
the string contains no characters or all whitespace characters; returning
`false` otherwise.

During the first part of the exercise spend some time discussing and
implementing monkey-patching solution.

#### Address the Problem

The second objective is to take your initial implementations and re-implement or
supplement your implementation so that it done more **safely**. Discuss what you
might do to make your implementation more **safe**.

### Exercise Retrospective

Ruby provides a few ways to monkey-patch because of it's Open Classes. Discuss
what you liked and disliked about your implementations.

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

The solution of this exercise only requires that you implement **one method
method** for **one class**. How might you develop a solution that allows you to
more easily monkey-patch **any class** with **multiple methods** with the same
safety strategy?

* How could you make a [gist](https://gist.github.com/) of a pattern that you
  could copy and paste into a new project?

* Ruby's `Module` has an method,
  [included](http://rubydoc.info/stdlib/core/1.9.3/Module:included), which is
  called when the module has been used by a class. How could you use that to
  ensure methods are not overridden?

* Ruby's `Module` has a method called 
  [define_method](http://rubydoc.info/stdlib/core/1.9.3/Module:define_method)
  which allows you to define a method dynamically within code. How could that be
  used to add a method, while ensuring not to override existing methods?


### Reading

* Ruby Metaprogramming pages 27 - 47
* Ruby Metaprogramming pages 152 - 156
* Ruby Metaprogramming pages 232 - 237


