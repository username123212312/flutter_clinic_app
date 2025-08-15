import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/custom_bottom_app_bar.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../widgets/doctor_vaccines/show_vaccines_screen.dart';
import '../../widgets/chat/chat_list_widget.dart';
import '../../widgets/doctor_appointments/appointments_screen_widget.dart';
import '../../widgets/doctor_patients/visited_patients_screen.dart';
import '../../widgets/profile/doctor_profile_widget.dart';

class DoctorHomeScreen extends StatefulWidget {
  const DoctorHomeScreen({super.key});

  @override
  State<DoctorHomeScreen> createState() => _DoctorHomeScreenState();
}

class _DoctorHomeScreenState extends State<DoctorHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          _currentIndex == 0
              ? null
              : AppBar(
                toolbarHeight: screenHeight(context) * 0.1,
                title: BlocListener<AuthBloc, AuthState>(
                  listener: (context, state) {
                    if (state.isAuth == false) {
                      context.goNamed(AppRouteConstants.welcomeRouteName);
                    }
                  },
                  child: Text(
                    _currentIndex == 1
                        ? 'Appointments'
                        : _currentIndex == 2
                        ? 'Chat'
                        : _currentIndex == 3
                        ? 'Vaccines'
                        : 'Profile',
                    style: Theme.of(
                      context,
                    ).textTheme.labelMedium!.copyWith(fontSize: 18),
                  ),
                ),
              ),
      body: _buildMainContent(_currentIndex),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Container _buildBottomBar() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0.0, -1.0),
            blurRadius: 7.9,
            color: Colors.black.withAlpha(80),
            spreadRadius: 0.1,
          ),
        ],
      ),
      child: ConvexAppBar(
        backgroundColor: Pallete.backgroundColor,
        initialActiveIndex: _currentIndex,
        color: Pallete.grayScaleColor500,
        onTap: (p0) {
          setState(() {
            _currentIndex = p0;
          });
        },
        items: [
          TabItem(
            icon: Padding(
              padding: EdgeInsets.all(_currentIndex == 0 ? 10.0 : 0),
              child: Image.asset(
                'assets/icons/patient.png',
                width: 32,
                height: 32,
                fit: BoxFit.contain,
                color:
                    _currentIndex == 0
                        ? Theme.of(context).colorScheme.primary
                        : null,
              ),
            ),
            title: 'Patients',
            // isIconBlend: true,
          ),
          TabItem(
            icon: Padding(
              padding: EdgeInsets.all(_currentIndex == 1 ? 10.0 : 0),
              child: Image.asset(
                'assets/icons/task.png',
                width: 32,
                height: 32,
                fit: BoxFit.contain,
                color:
                    _currentIndex == 1
                        ? Theme.of(context).colorScheme.primary
                        : null,
              ),
            ),
            title: 'Appoints',
            // isIconBlend: true,
          ),
          TabItem(
            icon: Padding(
              padding: EdgeInsets.all(_currentIndex == 2 ? 10.0 : 0),
              child: Image.asset(
                'assets/icons/messenger.png',
                width: 32,
                height: 32,
                fit: BoxFit.contain,
                color:
                    _currentIndex == 2
                        ? Theme.of(context).colorScheme.primary
                        : null,
              ),
            ),
            title: 'Chat',
            // isIconBlend: true,
          ),
          TabItem(
            icon: Padding(
              padding: EdgeInsets.all(_currentIndex == 3 ? 10.0 : 0),
              child: Image.asset(
                'assets/icons/doctor_vaccine.png',
                width: 32,
                height: 32,
                fit: BoxFit.contain,
                color:
                    _currentIndex == 3
                        ? Theme.of(context).colorScheme.primary
                        : null,
              ),
            ),
            title: 'Vaccine',
            // isIconBlend: true,
          ),
          TabItem(
            icon: Padding(
              padding: EdgeInsets.all(_currentIndex == 4 ? 10.0 : 0),
              child: Image.asset(
                'assets/icons/profile.png',
                width: 32,
                height: 32,
                fit: BoxFit.contain,
                color:
                    _currentIndex == 4
                        ? Theme.of(context).colorScheme.primary
                        : null,
              ),
            ),
            title: 'Profile',
            // isIconBlend: true,
          ),
        ],
      ),
    );
  }

  Widget _buildMainContent(int index) {
    switch (index) {
      case 0:
        return VisitedPatientsScreen();
      case 1:
        return AppointmentsScreenWidget();
      case 2:
        return ChatListWidget();
      case 3:
        return ShowVaccinesScreen();
      case 4:
        return DoctorProfileWidget();
      default:
        return Placeholder();
    }
  }

  int _currentIndex = 0;
}
