Gem::Specification.new do |gem|
  gem.name = 'cap3-elb'
  gem.version = '0.1.0'

  gem.summary = 'Capistrano tasks to maintain a load balancer'
  gem.description = "Provides new commands to manage your ELB load balancer from capistrano."

  gem.authors = ['Conrad Irwin']
  gem.email = %w(conrad@bugsnag.com)
  gem.homepage = 'http://github.com/ConradIrwin/cap3-elb'

  gem.license = 'MIT'

  gem.add_dependency 'capistrano', '~> 3.0'

  gem.files = `git ls-files`.split("\n")
end
