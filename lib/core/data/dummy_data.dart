import '../../features/home/model/doctor_model.dart';

final List<DoctorModel> doctorsList = List.generate(10, (index) {
  return DoctorModel(
    name: 'Jennifer Miller $index',
    specality: (index % 2 == 0) ? 'Heart' : 'Lung',
    rate: 4.8,
    availabilityTime: '10:30am - 5:30pm',
  );
});
