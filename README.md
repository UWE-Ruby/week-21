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

Some possible actions:

* Documentation
* Show a warning message when first monkey-patched
* Show a warning message on every execution
* Raise an error
* Stop execution
* Rename the original method
* Rename the monkey-patched method

### Exercise Retrospective

Ruby provides a few ways to monkey-patch functionality because of it's Open Classes. 

Discuss what you liked and disliked about the various implementations and solutions in various contexts.

* A command-line tool
* A background application
* A Rails application
* A Ruby gem

Discuss in which situations, methods you may be overriding or contexts you may be operating in, would affect your choice in solution. 

### Further Exercise

Your solution likely monkey-patched functionality for one method. The objective of this further exercise would be to implement a solution that would allow you to more safely monkey-patch any class or object with any method.

#### Understand the Problem

Before implementing the system take some time for the following:

* What components you would need to make this system more modular
* How you could implement a solution that allows for multiple solutions (e.g. warning message, raise an error, stop execution).


### Reading

* [Monkeypatching is Destroying Ruby](http://avdi.org/devblog/2008/02/23/why-monkeypatching-is-destroying-ruby/)
* [Followup to "Monkeypatching is Destroying Ruby"](http://avdi.org/devblog/2008/02/25/followup-to-monkeypatching-is-destroying-ruby/)
* Ruby Metaprogramming pages 232 - 237

