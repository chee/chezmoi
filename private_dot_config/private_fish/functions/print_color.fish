# print_color
# #+name: print_color

# [[file:../../../notebook/config/fish/index.org::print_color][print_color]]
function print_color
  set_color $argv[1]
  echo -n $argv[2..-1]
  set_color normal
end
# print_color ends here
