require "bundler"
Bundler.setup

require "rspec/core/rake_task"
Rspec::Core::RakeTask.new(:spec)

gemspec = eval(File.read("converter.gemspec"))

task :build => "#{gemspec.full_name}.gem"

file "#{gemspec.full_name}.gem" => gemspec.files + ["converter.gemspec"] do
  system "gem build converter.gemspec"
  system "gem install converter-#{Converter::VERSION}.gem"
end
