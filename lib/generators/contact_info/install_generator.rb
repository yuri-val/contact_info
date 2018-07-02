require 'rails/generators'
require 'rails/generators/migration'
require 'rails/generators/active_record'

module ContactInfo
  # rails generate contact_info:install
  class InstallGenerator < Rails::Generators::Base
    include Rails::Generators::Migration

    def self.next_migration_number(path)
      ActiveRecord::Generators::Base.next_migration_number(path)
    end

    desc 'Installs contact_info and generates the necessary configuration files'
    source_root File.expand_path('../templates', __FILE__)

    def create_migrations
      migration_template 'migrations/create_contact_info.rb',
                         'db/migrate/create_contact_info.rb',
                         migration_version: migration_version
    end

    def rails5?
      Rails.version.start_with? '5'
    end

    def migration_version
      if rails5?
        "[#{Rails::VERSION::MAJOR}.#{Rails::VERSION::MINOR}]"
      end
    end
  end
end