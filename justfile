generate_img:
  rm -f corne_keymap.yaml corne_keymap.png corne_keymap.png
  keymap parse -c 5 -z config/corne.keymap > corne_keymap.yaml
  keymap draw corne_keymap.yaml > corne_keymap.svg
  convert corne_keymap.svg corne_keymap.png
  rm corne_keymap.yaml corne_keymap.svg
  mv corne_keymap.png /tmp
