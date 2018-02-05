Cls
Mode 3
Sprite Load "ball.spr"
x = 5
y = 100
d = 1
g = 1
cycles = 0
speed = 10000
incomingy = 99
incomingx = 4
Sprite ON 1, x, y
Line (0, 0) - (0, 480), 6
Line (0, 0) - (461, 0), 6
Line (461, 0) - (461, 480), 6
Line (0, 380) - (461, 380), 6
Do
If cycles = 4 Then
Line (1, 100) - (15, 100), 0
EndIf
Pause 10000 - speed
If x < 444 Then
  If x < 2 Then
     d = d*(-1)
  EndIf
Else
  d = d*(-1)
EndIf
If y < 5 Then
  g = g*(-1)
  x = x + d
  y = y + g
ElseIf y > 362 Then
  g = g*(-1)
  x = x + d
  y = y + g
Else
  x = x + d
  y = y + g
EndIf
BLIT incomingx, incomingy, x, y, 17, 17, RGB
incomingx = x
incomingy = y
cycles = cycles + 1
userinput$ = Inkey$
If userinput$ = "q" Then
 Cls
 Exit
ElseIf userinput$ = "s" Then
  speed = speed - 5
ElseIf userinput$ = "r" Then
  speed = 10000
ElseIf userinput$ = "p" Then
 Do
  If Inkey$ = "p" Then
  Exit
  ElseIf Inkey$ = "q" Then
   Cls
   End
  EndIf
 Loop
EndIf
Locate 15, 390
Print "X"
Locate 1, 408
Print "    "
Locate 1, 408
Print x
Locate 51, 390
Print "Y"
Locate 40, 408
Print "    "
Locate 40, 408
Print y
Locate 80, 390
Print "Cycles"
Locate 78, 408
Print "     "
Locate 78, 408
Print cycles
Locate 138, 390
Print "Speed"
Locate 133, 408
Print "         "
Locate 133, 408
Print speed
Loop

