!SLIDE

# Ruby Concepts

!SLIDE quote

## `respond_to?`

"abc".respond_to? :empty?

!SLIDE quote

## `methods`

"abc".methods.sort
"abc".methods.grep /empty\?/

!SLIDE quote

## `instance_methods`

String.instance_methods

!SLIDE

    "abc".methods == String.instance_methods

!SLIDE quote

## Open Classes

    class String
      def to_vhs
        "vhs:#{self}"
      end
      
      def to_betamax
        "beta:#{self}"
      end
    end
    
    "abc".respond_to? :to_vhs
    String.new.respond_to? :to_betamax
    
!SLIDE quote

## Module is for Sharing!

    module VideoFormats
      def to_vhs ; "vhs:#{self}" ; end
      def to_betamax ; "beta:#{self}" ; end
    end
    
    class String
      include VideoFormats
    end

!SLIDE quote

## Module is for Caring!


    module UWRuby
      module VideoFormats
        def to_vhs ; "vhs:#{self}" ; end
        def to_betamax ; "beta:#{self}" ; end
      end
    
      class String < ::String
        include VideoFormats
      end
      
      puts String.new("abc").to_vhs
      puts String.instance_methods.include?(:to_vhs)
      puts ::String.new.respond_to?(:to_vhs)
    end

!SLIDE quote

# What the hell is `::`?

    module UWRuby
      #...
      class String < ::String
        include VideoFormats
      end
      #...
      puts ::String.new.respond_to?(:to_vhs)
    end

!SLIDE quote

## Prefixing a Constant

::String

!SLIDE quote

## ::String

![modules](images/modules_nesting.png)

!SLIDE quote

## Module is for Namespacing!

    module UWRuby
      module VideoFormats ; end
      class String ; end
    end

    String.instance_methods.include?(:to_vhs)
    UWRuby::String.new.respond_to?(:to_vhs)

!SLIDE quote

# I saw `::` again?

!SLIDE quote

## Between Constants

UWRuby::String.new.respond_to?(:to_vhs)

## Equivalency

module UWRuby
  String.new.respond_to?(:to_vhs)
end

!SLIDE quote

## UWRuby::String

![modules](images/modules_second_nesting.png)

!SLIDE quote

## Salute to the `Kernel` Module

Gives you methods like `puts`, `warn`, `exit`, `raise`, and `fail`

!SLIDE quote

## Exceptional Ruby

An elegant way to fail!

    if $DEBUG
      module Kernel
        def warn(message) 
          raise message
        end 
      end
    end
    
!SLIDE

## Around Alias

    class String
      alias :old_reverse :reverse

      def reverse
        "[#{old_reverse}]"
      end

    end
    
    "abc".reverse
    "abc".old_reverse

