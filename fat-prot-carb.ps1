write-output "arg=$args[0]"
($args[0]=="")?($dc=2100):($dc=[convert]::ToInt32($args[0],10))
write-output "dc=$dc"
write-output "percent calorie    weight   percent weight"
write-output "fat prot carb  fat prot carb"
for ($f=0; $f -le 100; $f +=10){
for ($p=(100-$f); $p -ge 0; $p -=10){
$c=(100-$p-$f);
$fg=2100*$f/100/9
$pg=2100*$p/100/4
$cg=2100*$c/100/4
$tc=$fg+$pg+$cg
$fc=($fg)?($fg/$tc*100):0
$pc=($pg)?($pg/$tc*100):0
$cc=($cg)?($cg/$tc*100):0
write-output "$f $p $c     $fg $pg $cg     $fc $pc $cc"
}
}
#PS C:\> [math]::Round($a,2)
#import 'package:flutter/widgets.dart';