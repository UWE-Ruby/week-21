## The Monkey in the Jungle

Monkey-patching is a powerful tool in Ruby at your disposal. And ["with great power comes great responsibility"](http://en.wikipedia.org/wiki/Uncle_Ben#.22With_great_power_comes_great_responsibility.22). It gets a bad name because of the often unintended confusion and damage that it can cause within your own code and code other people have implemented. 

Monkey-patching is an important lesson in the world of 

An important


### Exercise

The objective of the exercise is to accomplish the following:

#### Understand the Problem

First and foremost is to understand how you can monkey-patch. During the first part of the exercise spend some time discussing and implementing a few solutions that employ monkey-patching. 

#### Address the Problem

The second object is to take your initial implementations and perform them more `safely` by performing the following when applying your monkey patch: 

* Documentation
* Show a warning message
* Raise an error
* Stop execution
* Rename the original method
* Rename the monkey-patched method

### Exercise Retrospective

Ruby provides a few ways to monkey-patch functionality because of it's Open Classes. 

Discuss what you liked and disliked about the various implementations and solutions in various contexts.

* In a command-line tool
* In a Rails application
* In a Ruby gem

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

