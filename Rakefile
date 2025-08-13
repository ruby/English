require "bundler/gem_tasks"

generator = "bin/alias_markdown_table_generator"
file "README.md" => ["lib/English.rb", generator] do
  ruby generator, "README.md"
end
task "update-alias-table" do
  ruby "-i", "bin/alias_list_update.rb", "lib/English.rb"
end
