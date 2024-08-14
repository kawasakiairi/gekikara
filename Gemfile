source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.0"

gem "rails", "~> 7.0.8", ">= 7.0.8.4"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"

  # デバッグの効率化（8/11追加）
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"

end

gem "dockerfile-rails", ">= 1.6", :group => :development

# Bootstrap導入（8/9追加）
gem 'bootstrap'
gem 'sassc-rails'

# ページネーション（8/11追加）
gem 'kaminari'
gem 'bootstrap5-kaminari-views', '~> 0.0.1'

# CarrieWaveの設定（8/12追加）
gem 'carrierwave', '~> 2.0'

# sorceryの導入（8/12追加）
gem 'oauth2'  # 外部プロバイダー
gem 'sorcery', "0.16.3"
