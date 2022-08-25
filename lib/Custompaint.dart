import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter{
  
  @override
  void paint(Canvas canvas, Size size) {
    
    

  Paint paint0 = Paint()
      ..color =  Colors.yellow
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
     
         
    Path path0 = Path();
    path0.moveTo(size.width*0.0100000,size.height*0.6000000);
    path0.cubicTo(size.width*0.1058333,size.height*0.5050000,size.width*0.1925000,size.height*0.3933333,size.width*0.2733333,size.height*0.3800000);
    path0.cubicTo(size.width*0.3725000,size.height*0.3233333,size.width*0.5158333,size.height*0.3883333,size.width*0.5900000,size.height*0.4600000);
    path0.quadraticBezierTo(size.width*0.6366667,size.height*0.4933333,size.width*0.8233333,size.height*0.7200000);
    path0.lineTo(size.width*0.9933333,size.height*0.9800000);
    path0.lineTo(size.width*0.9933333,size.height*0.0066667);
    path0.lineTo(size.width*0.0033333,size.height*0.0066667);
    path0.lineTo(size.width*0.0033333,size.height*0.5933333);
    path0.quadraticBezierTo(size.width*0.0050000,size.height*0.5950000,size.width*0.0100000,size.height*0.6000000);
    path0.close();

    canvas.drawPath(path0, paint0);
  
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}



