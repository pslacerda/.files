## Algumas configurações
xrdb -merge $HOME/.Xresources

## Ajusta o volume
pactl set-sink-volume 0 '20%' &

## Ajusta a resolução
xrandr --newmode 1920x1080 $(cvt 1920 1080 | tail -1 | cut -d' ' -f3-) &&
xrandr --addmode VGA-1 1920x1080 &&
xrandr --output VGA-1 --mode 1920x1080 &

## Desativa os beeps
xset -b &

## Layout do teclado
setxkbmap br -option caps:swapescape

## Economia de energia (standby -> suspendido -> desligado) (segundos)
xset dpms 300 600 900 &

## Painel de notificações
dunst &

exec i3
