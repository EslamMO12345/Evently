import 'package:intl/intl.dart';

extension FormatDateTime on DateTime{
   String get toFormatDate{
    DateFormat formatter = DateFormat('dd / MM / yyyy');
    return formatter.format(this);
  }

 String get veiwMonthText {
     DateFormat formatter = DateFormat("MMMM");
     String month  = formatter.format(this).substring(0,3);
     return month;
 }

 String get formatTime{
     DateFormat formater = DateFormat().add_jm();
     return formater.format(this);
 }
}