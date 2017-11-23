## Algumas configurações
xrdb -merge $HOME/.Xresources

## Ajusta o volume
pactl set-sink-volume 0 '20%' &

## Desativa os beeps
xset -b &

## Layout do teclado
setxkbmap br -option caps:swapescape

## Economia de energia (standby -> suspendido -> desligado) (segundos)
xset dpms 300 600 900 &

## Painel de notificações
dunst &

exec i3

