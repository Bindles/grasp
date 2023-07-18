gemfile:
gem 'devise'

bundle install

project/_rails/grasp  main ✗                                                                    ◒
▶ rails g devise:install
      create  config/initializers/devise.rb
      create  config/locales/devise.en.yml
===============================================================================

Depending on your application's configuration some manual setup may be required:

  1. Ensure you have defined default url options in your environments files. Here
     is an example of default_url_options appropriate for a development environment
     in config/environments/development.rb:

       config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

     In production, :host should be set to the actual host of your application.

     * Required for all applications. *

  2. Ensure you have defined root_url to *something* in your config/routes.rb.
     For example:

       root to: "home#index"

     * Not required for API-only Applications *

  3. Ensure you have flash messages in app/views/layouts/application.html.erb.
     For example:

       <p class="notice"><%= notice %></p>
       <p class="alert"><%= alert %></p>

     * Not required for API-only Applications *

  4. You can copy Devise views (for customization) to your app by running:

       rails g devise:views

     * Not required *

===============================================================================

project/_rails/grasp  main ✗                                                                    ◒
▶ rails g devise User
      invoke  active_record
      create    db/migrate/20230718065401_devise_create_users.rb
      create    app/models/user.rb
      invoke    test_unit
      create      test/models/user_test.rb
      create      test/fixtures/users.yml
      insert    app/models/user.rb
       route  devise_for :users

project/_rails/grasp  main ✗                                                                    ◒
▶ rails db:migrate
== 20230718065401 DeviseCreateUsers: migrating ================================
-- create_table(:users)
   -> 0.0053s
-- add_index(:users, :email, {:unique=>true})
   -> 0.0011s
-- add_index(:users, :reset_password_token, {:unique=>true})
   -> 0.0007s
== 20230718065401 DeviseCreateUsers: migrated (0.0073s) =======================


project/_rails/grasp  main ✗                                                                    ◒
▶ rails active_storage:install
Copied migration 20230718085302_create_active_storage_tables.active_storage.rb from active_storage

project/_rails/grasp  main ✗                                                                    ◒
▶

project/_rails/grasp  main ✗                                                                   ◒  ⍉
▶ rails db:migrate
== 20230718085302 CreateActiveStorageTables: migrating ========================
-- create_table(:active_storage_blobs, {:id=>:primary_key})
   -> 0.0047s
-- create_table(:active_storage_attachments, {:id=>:primary_key})
   -> 0.0029s
-- create_table(:active_storage_variant_records, {:id=>:primary_key})
   -> 0.0024s
== 20230718085302 CreateActiveStorageTables: migrated (0.0102s) ===============


project/_rails/grasp  main ✗                                                                   ◒  ⍉
▶ rails g model Profile profile_image:image bio:text user:references

Could not generate field 'profile_image' with unknown type 'image'.

project/_rails/grasp  main ✗                                                                    ◒
▶

project/_rails/grasp  main ✗                                                                   ◒  ⍉
▶ rails g model Profile profile_image:attachment bio:text user:references

      invoke  active_record
      create    db/migrate/20230718090818_create_profiles.rb
      create    app/models/profile.rb
      invoke    test_unit
      create      test/models/profile_test.rb
      create      test/fixtures/profiles.yml

project/_rails/grasp  main ✗                                                                    ◒
▶ rails db:migrate
== 20230718090818 CreateProfiles: migrating ===================================
-- create_table(:profiles)
   -> 0.0053s
== 20230718090818 CreateProfiles: migrated (0.0054s) ==========================


project/_rails/grasp  main ✗                                                                                                                                                                ◒
▶
