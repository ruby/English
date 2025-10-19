#!ruby
content = ARGF.file.read
list = content.scan(/^alias (\$\S+)( +)(\$.)$/).map do |a, s, b|
  "#  <tt>#{a}</tt>::#{s}<tt>#{b}</tt>\n"
end
puts content.sub(/^# *Below is a full list.*(?:\n# *\S.*)*\n#\n\K(?:#  .*\n)*/) {
  list.join("")
}
