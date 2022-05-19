import 'package:get/get.dart';

class LocaleString extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'Facebook': 'Facebook',
          'message': 'Follow Us',
          'Login':'Login',
          'Home':'Home',
          'Instagram': 'Instagram',
          'changelang': 'Change Language',
          'Mon - Wed':'Mon - Wed',
          '10:00am - 7:00pm':'10:00am - 7:00pm',
          'Thursday':'Thursday',
          'Sat - Sun':'Sat - Sun',
          '10:00am - 4:00pm':'10:00am - 4:00pm',
          'second':'10:00am - 7:00pm',
          'Appointment':'Appointment',
          'Follow Us':'Follow Us',
          'Opening Hours':'Opening Hours',
        },
        'ar_SA': {
          'Facebook': 'فيسبوك',
          'message': 'تابعنا',
          'Instagram': 'انستغرام',
          'changelang': 'تغيير اللغة',
          'Follow Us': 'تابعنا',
          'Login':'تسجيل الدخول',
          'Mon - Wed':'الإثنين - الأربعاء',
          '10:00am - 7:00pm':'10:00 ص - 7:00 م',
          '10:00am - 4:00pm':'10:00 ص - 4:00 م',
          'Thursday':'يوم الخميس',
          'Sat - Sun':'اشعة الشمس',
          
          'Appointment':'ميعاد',

          'Home':'مسكن',
          'Opening Hours':'ساعات العمل'
        },
      };
}
