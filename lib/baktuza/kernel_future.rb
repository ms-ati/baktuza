# Enhance Kernel with method `#future(&block)`
module Kernel
  # Creates a `Future`, see {Baktuza::Future#initialize} for documentation.
  #
  # @see Baktuza::Future#initialize
  def future(&block)
    ::Baktuza::Future.new(&block)
  end
end