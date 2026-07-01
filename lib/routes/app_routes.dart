import 'package:flutter/material.dart';
import '../pages/attendance_detail_page.dart';
import '../pages/attendance_page.dart';
import '../pages/changepassword_page.dart';
import '../pages/dummyattendance_page.dart';
import '../pages/dummysignup_page.dart';
import '../pages/forgetpassword_page.dart';
import '../pages/holiday_page.dart';
import '../pages/home_page.dart';
import '../pages/leave_page.dart';
import '../pages/login_page.dart';
import '../pages/navigation_page.dart';
import '../pages/noticeboard_page.dart';
import '../pages/onduty_page.dart';
import '../pages/profile_page.dart';
import '../pages/request_leave.dart';
import '../pages/request_offduty.dart';
import '../pages/request_workfromhome.dart';
import '../pages/team_attendance_page.dart';
import '../pages/updatedialouge.dart';
import '../pages/workfrom_home_page.dart';

class AppRoutes {
  static const loginPage = '/login_page';
  static const homePage = '/homePage';
  static const attendancepage = '/attendancePage';
  static const leaveApply = '/leaveApply';
  static const onDutyPage = '/onDutyPage';
  static const profilePage = '/profilePage';
  static const navigationPage = '/navigationPage';
  static const attendanceDetailPage = '/attendanceDetailPage';
  static const requestLeave = '/requestLeave';
  static const teamattendance = '/teamattendance';
  static const workfromHome = '/workfromHome';
  static const forgetpassword = '/forgetPassword';
  static const getLocation = '/getLocation';
  static const changepassword = '/changepassword';
  static const requestoffduty = '/requestoffduty';
  static const dummysignuppage = '/dummysignupPage';
  static const dummyattendancepage = '/dummyattendancePage';
  static const holidaypage = '/holidayPage';
  static const noticeboard = '/noticeboardPage';
  static const requestWorkfromHome = '/requestWorkfromHome';


  static Map<String, Widget Function(BuildContext)> getRoutes(BuildContext _) {
    return <String, Widget Function(BuildContext)>{
      loginPage: (_) => const LoginPage(),
      homePage: (_) => const HomePage(),
      attendancepage: (_) => const AttendancePage(),
      leaveApply: (_) => const LeavePage(),
      onDutyPage: (_) => const OnDutyPage(),
      profilePage: (_) => const ProfilePage(),
      navigationPage: (_) => const NavigationPage(),
      attendanceDetailPage: (_) => const AttendanceDetailPage(),
      requestLeave: (_) => const RequestLeave(),
      teamattendance: (_) => const TeamAttendancePage(),
      workfromHome: (_)=> const WorkFromHomePage(),
      forgetpassword: (_) => const ForgetPasswordPage(),
      changepassword: (_) => const ChangePasswordPage(),
      requestoffduty: (_) => const RequestOffdutyPage(),
      dummysignuppage: (_) => const DummySignupPage(),
      dummyattendancepage: (_) => const DummyAttendancePage(),
      holidaypage: (_) => const HolidayPage(),
      noticeboard: (_) => const NoticeBoardPage(),
      requestWorkfromHome: (_) => const RequestWorkfromHome()
    };
  }
}
