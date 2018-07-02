module Contactinfo
  class InstallGenerator < Rails::Generators::NamedBase
    include Rails::Generators::Migration

    def self.next_migration_number(path)
      ActiveRecord::Generators::Base.next_migration_number(path)
    end

    desc 'Installs and generates the necessary configuration files'
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

