!SLIDE 
# Monkey-Patching #

!SLIDE quote
# Exercise #

Implement a new `#empty?` method on [String](http://rubydoc.info/stdlib/core/1.9.3/String) which returns `true` when the string contains no characters or all whitespace characters; returning `false` otherwise.

!SLIDE points

## Understand the problem

Discuss and explore one or more monkey-patching solutions

## Address the problem

Re-implement or supplement your implementation so that it is done more **safely**

!SLIDE countdown

## Monkey-patch `String#empty?`
## Implement a **safe** strategy

<!-- Countdown dashboard start -->
<div id="countdown_dashboard" style="margin-left: 372px; width: 350px">
  
  <div class="dash minutes_dash">
    <span class="dash_title">minutes</span>
    <div class="digit">0</div>
    <div class="digit">0</div>
  </div>

  <div class="dash seconds_dash">
    <span class="dash_title">seconds</span>
    <div class="digit">0</div>
    <div class="digit">0</div>
  </div>

</div>
<!-- Countdown dashboard end -->

<script>
$('#countdown_dashboard').countDown({
    targetOffset: {
        'day':      0,
        'month':    0,
        'year':     0,
        'hour':     0,
        'min':      45,
        'sec':      0
    }
});
</script>


!SLIDE retrospective

# Retrospective

!SLIDE

## What implementation did you choose?

!SLIDE

## How did you choose to ensure **safety**?

!SLIDE bullets incremental

## Would your implementation change in:

* overriding Ruby's core functionality
* a new method on a prominent class
* a new method on a not so prominent class

!SLIDE bullets incremental

## Would your implementation change in:

* overriding a gem's functionality
* a new method on a prominent class
* a new method on a not so prominent class

!SLIDE bullets incremental

## Would your implementation change in:

* one-off script
* project with few dependencies
* project with many dependencies

!SLIDE bullets incremental

## Would your implementation change in:

* command-line tool
* background application
* Rails application
* Ruby gem

