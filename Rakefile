require "rake/clean"
require "bundler/gem_tasks"
require "rspec/core/rake_task"

# Default task for `rake` is to run rspec
task :default => [:spec]

# Use default rspec rake task
RSpec::Core::RakeTask.new

# Configure `rake clobber` to delete all generated files
CLOBBER.include(%w(.yardoc coverage doc pkg))

# Only configure yard doc generation when *not* on Travis
if ENV['CI'] != 'true'
  require "github/markup"
  require "redcarpet"
  require "yard"
  require "yard/rake/yardoc_task"

  YARD::Rake::YardocTask.new do |t|
    OTHER_PATHS = %w()
    t.files   = ['lib/**/*.rb', OTHER_PATHS]
    t.options = %w(--markup-provider=redcarpet --markup=markdown --main=README.md)
  end
end
