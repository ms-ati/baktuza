$:.push File.expand_path("../lib", __FILE__)
require "baktuza/version"
require "baktuza/string_unindent"

Gem::Specification.new do |s|
  s.name        = "baktuza"
  s.version     = Baktuza::VERSION
  s.authors     = ["Marc Siegel"]
  s.email       = ["msiegel@usainnov.com"]
  s.homepage    = "http://ms-ati.github.com/baktuza/"
  s.summary     = "Baktuza::Future lets you compose non-blocking async calls"
  s.description = <<-END.unindent
    Baktuza::Future provides an event-driven concurrency primitive which lets
    you compose asynchronous operations, especially I/O, in a non-blocking way.

    This library is inspired by the Scala 2.10 Futures API, and aims to provide
    a similar feel while enhancing parallelism of I/O-bound Ruby applications
    on all platforms, and CPU-bound Ruby applications on multi-core platflorms
    such as JRuby.
  END

  s.rubyforge_project = "baktuza"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # Running rspec tests from rake
  s.add_development_dependency "rake", ">= 0.9.2"
  s.add_development_dependency "rspec", ">= 2.11.0"

  # Github flavored markdown in YARD documentation
  # http://blog.nikosd.com/2011/11/github-flavored-markdown-in-yard.html
  s.add_development_dependency "yard"
  s.add_development_dependency "redcarpet"
  s.add_development_dependency "github-markup"

  # Coveralls test coverage tool
  s.add_development_dependency "coveralls"
end
