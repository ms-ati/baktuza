module Baktuza
  # Baktuza::Future is an event-driven, non-blocking concurrency primitive.
  #
  class Future
    # Creates a future representing the execution of a block asynchronously.
    #
    # @example Evaluate an operation asynchronously
    #   x = future { 3 + 3 }
    #
    # @yield             a block to execute asynchronously
    # @return  [Future]  a future representing the execution
    def initialize(&block)
    end
  end
end

# Enhance Kernel with method `#future(&block)`
require 'baktuza/future/kernel_future'