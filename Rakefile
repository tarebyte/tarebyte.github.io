require 'middleman'

task :build do
  sh "middleman build --clean"
end

task :publish do
  sh "middleman build --clean"
  sh "middleman deploy --clean"
end

task :default => :publish
