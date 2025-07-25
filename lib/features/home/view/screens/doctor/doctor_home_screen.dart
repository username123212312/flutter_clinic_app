import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/custom_bottom_app_bar.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../../../../core/theme/app_pallete.dart';
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
                        : 'Profile',
                    style: Theme.of(
                      context,
                    ).textTheme.labelMedium!.copyWith(fontSize: 18),
                  ),
                ),
              ),
      body: _buildMainContent(_currentIndex),
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: Pallete.backgroundColor,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        currentIndex: _currentIndex,
        onTap: (p0) {
          setState(() {
            _currentIndex = p0;
          });
        },
        items: [
          SalomonBottomBarItem(
            icon: Image.asset(
              'assets/icons/patient.png',
              width: 38,
              height: 38,
              fit: BoxFit.cover,
              color: _currentIndex == 0 ? Colors.black : null,
            ),
            title: FittedBox(
              child: Text(
                'Patients',
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.copyWith(fontSize: 15),
              ),
            ),
          ),
          SalomonBottomBarItem(
            icon: Image.asset(
              'assets/icons/task.png',
              width: 38,
              height: 38,
              fit: BoxFit.cover,
              color: _currentIndex == 1 ? Colors.black : null,
            ),
            title: FittedBox(
              child: Text(
                'Appoints',
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.copyWith(fontSize: 15),
              ),
            ),
          ),
          SalomonBottomBarItem(
            icon: Image.asset(
              'assets/icons/messenger.png',
              width: 38,
              height: 38,
              fit: BoxFit.cover,
              color: _currentIndex == 2 ? Colors.black : null,
            ),
            title: FittedBox(
              child: Text(
                'Chat',
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.copyWith(fontSize: 15),
              ),
            ),
          ),
          SalomonBottomBarItem(
            icon: Image.asset(
              'assets/icons/profile.png',
              width: 38,
              height: 38,
              fit: BoxFit.cover,
              color: _currentIndex == 3 ? Colors.black : null,
            ),
            title: FittedBox(
              child: Text(
                'Profile',
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.copyWith(fontSize: 15),
              ),
            ),
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
        return DoctorProfileWidget();
      default:
        return Placeholder();
    }
  }

  int _currentIndex = 0;
}
