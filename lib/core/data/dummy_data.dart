import '../../features/home/model/doctor_model.dart';

final List<DoctorModel> doctorsList = List.generate(10, (index) {
  return DoctorModel(
    firstName: 'Jennifer',
    lastName: 'Miller',
    speciality: (index % 2 == 0) ? 'Heart' : 'Lung',
    finalRate: 4.8.toString(),
    department: '10:30am - 5:30pm',
  );
});
