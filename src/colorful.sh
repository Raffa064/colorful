import colorful.colors
import colorful.echo-functions

function colorful/main() {
  local styles=(
    "bold" "thin" "italic" 
    "underline" "blink" "reverse" 
    "inverse" "hidden" "strikethrough"
  )

  local style
  for style in "${styles[@]}"; do
    echoe "$(color_code bg 0 100 255 $style) $style"
  done
}
