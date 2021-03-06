
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ghibli_movies_cli_gem/version"

Gem::Specification.new do |spec|
  spec.name          = "ghibli_movies_cli_gem"
  spec.version       = GhibliMoviesCliGem::VERSION
  spec.authors       = ["ludaires"]
  spec.email         = ["ludaires@gmail.com"]

  spec.summary       = %q{Receive a list of ghibli movies and information}  
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.5"
  spec.add_development_dependency('pry', '~> 0')
  spec.add_development_dependency('pry-doc', '~> 0')
  spec.add_development_dependency('pry-byebug', '~> 3.6.0')

  spec.add_dependency('rest-client', '~> 2.0.2')
  spec.add_dependency('json', '~> 2.1.0')
end


