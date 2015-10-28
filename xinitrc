
xrdb -merge $HOME/.Xresources

## Papel de parede
xli -onroot $HOME/Pictures/pattern.png &

## Ajusta o volume
pactl set-sink-volume 0 '20%' &

## Desativa os beeps
xset -b &

## Layout do teclado
setxkbmap br -option ctrl:nocaps

## Economia de energia (standby -> suspendido -> desligado) (segundos)
xset dpms 300 600 900 &

## Painel de notificações
dunst &

exec i3
