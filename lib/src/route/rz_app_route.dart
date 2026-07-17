class RzAppRoute {
  const RzAppRoute._();
  static const home = '/';
  static const splash = '/splash';
  static const dashboard = '/dashboard';
  static const defaultRoute = RzAppRoute.dashboard;
  static const userLogin = '/login';
  static const userRegistration = '/registration';
  static const forgetPassword = '/forget-password/';
  static const resetPassword = '/reset-password/';

  static List sideBarMenuItems = [
    home,
    dashboard,
  ];
}