import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/utils/general_utils.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/custom_bottom_app_bar.dart';

import '../../widgets/doctor_appointments/appointments_screen_widget.dart';
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
      appBar: AppBar(
        toolbarHeight: screenHeight(context) * 0.1,
        title: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state.isAuth == false) {
              context.goNamed(AppRouteConstants.welcomeRouteName);
            }
          },
          child: Text(
            _currentIndex == 0
                ? 'Appointments'
                : _currentIndex == 1
                ? 'My Patients'
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
            bottom: screenHeight(context) * 0.122,
            child: _buildMainContent(_currentIndex),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: CustomBottomAppBar(
              titles: [
                {'Appointments': 'assets/icons/appointments_icon.png'},
                {'Patients': 'assets/icons/appointments_icon.png'},
                {'Profile': 'assets/icons/profile_icon.png'},
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
        return AppointmentsScreenWidget();
      case 1:
        return Placeholder();
      case 2:
        return DoctorProfileWidget();
      default:
        return Placeholder();
    }
  }

  int _currentIndex = 0;
}
