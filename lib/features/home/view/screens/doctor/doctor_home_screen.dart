import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/custom_bottom_app_bar.dart';

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
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: screenHeight(context) * 0.102,
            child: _buildMainContent(_currentIndex),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: CustomBottomAppBar(
              titles: [
                {'Patients': 'assets/icons/patient.png'},
                {'Appointments': 'assets/icons/task.png'},
                {'Chat': 'assets/icons/messenger.png'},
                {'Profile': 'assets/icons/profile.png'},
              ],
              onChange: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
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
        return Placeholder();
      case 3:
        return DoctorProfileWidget();
      default:
        return Placeholder();
    }
  }

  int _currentIndex = 0;
}
