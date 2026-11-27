require "bundler/gem_tasks"

generator = "bin/alias_markdown_table_generator"
file "README.md" => ["lib/English.rb", generator] do
  ruby generator, "README.md"
end
task "update-alias-table" do
  ruby "-i", "bin/alias_list_update.rb", "lib/English.rb"
end

namespace :rbs do
  require "rake/testtask"
  Rake::TestTask.new(:test) do |t|
    t.libs << "lib"
    t.test_files = FileList["test_sig/test_*.rb"]
    t.warning = true
  end
end
