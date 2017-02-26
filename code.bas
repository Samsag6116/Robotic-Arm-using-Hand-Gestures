$regfile = "M8def.dat"
$crystal = 11059200
$baud = 9600
Config Adc = Single , Prescaler = Auto
Config Portb = Output
Start Adc
Enable Interrupts
Config Servos = 5 , Servo1 = Portb.0 , Servo2 = Portb.1 , Servo3 = Portb.2 , Servo4 = Portb.3 , Servo5 = Portb.4 , Reload = 5

Dim W As Word , Y As Single

Do


   W = Getadc(0)
   Y = W
   Y = Y * 0.107421875
   Y = Y + 70
   Servo(1) = Y


   W = Getadc(1)
   Y = W
   Y = Y * 0.107421875
   Y = Y + 70
   Servo(2) = Y


   W = Getadc(2)
   Y = W
   Y = Y * 0.107421875
   Y = Y + 70
   Servo(3) = Y


   W = Getadc(3)
   Y = W
   Y = Y * 0.107421875
   Y = Y + 70
   Servo(4) = Y


   W = Getadc(4)
   Y = W
   Y = Y * 0.107421875
   Y = Y + 70
   Servo(5) = Y

   
Loop

End