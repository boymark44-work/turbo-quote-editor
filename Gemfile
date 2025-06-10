source "https://rubygems.org"

ruby "3.3.5"

# Core Rails gem
gem "rails", "~> 7.1.2"

# Database
gem "pg", "~> 1.1"

# Web server
gem "puma", ">= 5.0"

# Asset pipeline and bundlers
gem "sprockets-rails"
gem "jsbundling-rails"
gem "cssbundling-rails"

# Hotwire & frontend
gem "turbo-rails"
gem "stimulus-rails"

# JSON APIs
gem "jbuilder"

# Windows/jruby-specific
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Boot performance
gem "bootsnap", require: false

# Simple From Gem
gem "simple_form", "~> 5.1.0"

# Slim-Rails Template for Views
gem "slim-rails"

# Optional: Redis for Action Cable in production
gem "redis", ">= 4.0.1"

# Optional: Kredis for higher-level Redis data types
# gem "kredis"

# Optional: Secure password support
# gem "bcrypt", "~> 3.1.7"

# Optional: Active Storage variants/image processing
# gem "image_processing", "~> 1.2"

group :development, :test do
  # Debugging
  gem "debug", platforms: %i[ mri windows ]
end

group :development do
  # Console on exception pages
  gem "web-console"

  # Optional: Speed badges
  # gem "rack-mini-profiler"

  # Optional: Spring for faster commands
  # gem "spring"
end

group :test do
  # System testing
  gem "capybara"
  gem "selenium-webdriver"
  gem "minitest-reporters"
  gem 'guard'
  gem 'guard-minitest'
end