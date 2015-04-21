source 'https://rubygems.org'

ruby '2.1.5'

gem 'rails', '4.2.0'

gem 'sqlite3', group: [:development, :test]
gem 'pg', group: [:production]

#### HTML
# Haml
gem 'haml-rails'
gem 'erb2haml', group: [:development]

# Form Builders
gem 'simple_form'

# HTML5 Validator
gem 'html5_validators'

#### CSS
# Use SCSS for stylesheets
gem 'less-rails'

#### Javascript
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', '= 0.12.1', platforms: :ruby
gem 'libv8', '= 3.16.14.7'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

#### Log

# Assets log cleaner
gem 'quiet_assets'

# PG/MySQL Log Formatter
gem 'rails-flog'

#### else
# Presenter Layer
gem 'draper'

# .envで環境変数を設定する
gem 'dotenv-rails'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# 論理削除
gem 'kakurenbo'

# crontab管理
gem 'whenever',  require: false

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Rails/Rack Profiler
# gem 'speed_gun'

group :development,  :test do
  # Rspec
  gem 'rspec-rails'
  gem 'spring-commands-rspec'

  # fixtureの代わり
  gem 'factory_girl_rails'
  gem 'database_cleaner'

  # コーディング規約
  gem 'rubocop'

  gem 'rails_best_practices'

  # gem 'capistrano-rails'
  # gem 'cucumber-rails',  require: false,  git: 'https://github.com/cucumber/cucumber-rails.git'
  # gem 'capybara',  git: 'git://github.com/jnicklas/capybara.git'

  gem 'guard-rspec'
  # gem 'guard-cucumber'
  gem 'guard-rubocop'
  gem 'guard-livereload', require: false
  gem 'terminal-notifier-guard'

  # OSXの場合のみ、ファイル変更検知のため（それ以外の環境ではポーリングになる）
  # TODO: Mac以外はインストールしないようにした方がいいがHerokuでエラーになるのでその制御をしていない。
  gem 'rb-fsevent'

  # Rails application preloader
  gem 'spring'

  # Railsコンソールの多機能版
  gem 'pry-rails'

  # pryの入力に色付け
  gem 'pry-coolline'

  # デバッカー
  gem 'pry-byebug'
  gem 'pry-stack_explorer'
  # gem 'pry-debugger'

  # Pryでの便利コマンド
  gem 'pry-doc'

  # pryの色付けをしてくれる
  gem 'awesome_print'

  # PryでのSQLの結果を綺麗に表示
  gem 'hirb'
  gem 'hirb-unicode'
end

gem 'chatwork', '0.1.2'
