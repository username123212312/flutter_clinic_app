import 'dart:io';

import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:our_flutter_clinic_app/core/consts/app_constants.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/core/models/app_response.dart';
import 'package:our_flutter_clinic_app/core/models/usermodel.dart';
import 'package:our_flutter_clinic_app/core/providers/dio_client/dio_client.dart';
import 'package:our_flutter_clinic_app/core/services/google_auth_service/google_auth_service.dart';
import 'package:our_flutter_clinic_app/features/home/model/requests/home_requests.dart';
import 'package:fpdart/fpdart.dart';

import '../models/app_failure.dart';
import '../models/modify_doctor_info_request.dart';
import '../utils/utils.dart';
import '../../features/auth/model/requests/auth_requests.dart';

class UserRepository {
  UserRepository({Dio? dio}) : _dio = dio ?? DioClient().instance;

  Future<Either<AppFailure, AppResponse<UserModel>>> registerPatient(
    RegisterPatientRequest request,
  ) async {
    try {
      final isPhone = request.email == null || request.email!.trim().isEmpty;
      final response = await _dio.post(
        AppConstants.registerPath,
        data: {
          if (!isPhone) 'email': request.email,
          if (isPhone) 'phone': request.phone,
          'password': request.password,
          'password_confirmation': request.passwordConfirmation,
        },
      );
      eLog(response.data);
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<UserModel>(
            success: response.data['statusCode'] < 300,
            message: 'User created successfully!',
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
            data:
                response.data['user'] == null
                    ? null
                    : UserModel.fromJson(
                      response.data['user'],
                    ).copyWith(token: response.data['token']),
          ),
        );
      } else {
        return throw HttpException(parseStringList(response.data['message']));
      }
    } on DioException catch (e) {
      eLog(StackTrace.current);
      return Left(
        AppFailure(
          message: e.message ?? 'Some error occurred',
          stacktracte: StackTrace.current,
        ),
      );
    } on HttpException catch (e) {
      eLog(StackTrace.current);
      return Left(
        AppFailure(message: e.message, stacktracte: StackTrace.current),
      );
    } catch (e) {
      return Left(
        AppFailure(message: e.toString(), stacktracte: StackTrace.current),
      );
    }
  }

  Future<Either<AppFailure, AppResponse<UserModel>>> logUserIn(
    LogPatientInRequest request,
  ) async {
    final isPhone = request.email == null || request.email!.trim().isEmpty;
    try {
      final response = await _dio.post(
        AppConstants.loginPath,
        data: {
          if (!isPhone) 'email': request.email,
          if (isPhone) 'phone': request.phone,
          'password': request.password,
        },
      );
      eLog(response.data);
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            message:
                response.data['statusCode'] < 300
                    ? response.data['message']
                    : response.data['error'],
            success: response.data['statusCode'] < 300,
            data:
                response.data['statusCode'] < 300
                    ? UserModel.fromJson(response.data['user']).copyWith(
                      token: response.data['token'],
                      isCompleteProfile:
                          response.data['complete_profile'] ?? false,
                    )
                    : null,
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
          ),
        );
      } else {
        throw HttpException(response.data['error'] ?? 'Some error occurred');
      }
    } on DioException catch (e) {
      return Left(
        AppFailure(
          message: e.message ?? 'Error',
          stacktracte: StackTrace.current,
        ),
      );
    } on HttpException catch (e) {
      return Left(
        AppFailure(message: e.message, stacktracte: StackTrace.current),
      );
    } catch (e) {
      return Left(
        AppFailure(message: e.toString(), stacktracte: StackTrace.current),
      );
    }
  }

  Future<Either<AppFailure, AppResponse<UserModel>>>
  logUserInWithGoogle() async {
    try {
      final userMap = await GoogleAuthService().signIn();
      if (userMap != null) {
        final idToken = userMap['idToken'];
        eLog(userMap.toString());
        final response = await _dio.post(
          AppConstants.loginWithGooglePath,
          data: {'id_token': idToken},
        );
        if (response.data['statusCode'] < 300) {
          return Right(
            AppResponse(
              success: true,
              message: 'User Logged in successfully',
              statusCode: response.data['statusCode'],
              statusMessage: response.data['statusMessage'],
              data: UserModel.fromJson(
                response.data['user'],
              ).copyWith(token: response.data['token'], role: Role.patient),
            ),
          );
        } else {
          throw HttpException('Error happened');
        }
      } else {
        return Left(AppFailure(message: 'No user'));
      }
    } on DioException catch (e) {
      return Left(
        AppFailure(
          message: e.message ?? 'Error',
          stacktracte: StackTrace.current,
        ),
      );
    } on HttpException catch (e) {
      return Left(
        AppFailure(message: e.message, stacktracte: StackTrace.current),
      );
    } catch (e) {
      return Left(
        AppFailure(message: e.toString(), stacktracte: StackTrace.current),
      );
    }
  }

  Future<Either<AppFailure, AppResponse>> logUserOut() async {
    try {
      final response = await _dio.post(AppConstants.logoutPath);
      eLog(response.data);
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(success: true, message: 'User successfully logged out'),
        );
      } else {
        throw HttpException('Logging out is not done');
      }
    } on DioException catch (e) {
      return Left(
        AppFailure(
          message: e.message ?? 'Error',
          stacktracte: StackTrace.current,
        ),
      );
    } on HttpException catch (e) {
      return Left(
        AppFailure(message: e.message, stacktracte: StackTrace.current),
      );
    } catch (e) {
      return Left(
        AppFailure(message: e.toString(), stacktracte: StackTrace.current),
      );
    }
  }

  Future<Either<AppFailure, AppResponse<UserModel>>> completeUserInfo(
    CompleteUserInfoRequest request,
  ) async {
    try {
      final response = await _dio.post(
        AppConstants.completeInfoPath,
        data: {
          if (request.firstName != null) 'first_name': request.firstName,
          if (request.lastName != null) 'last_name': request.lastName,
          if (request.birthDate != null)
            'birth_date': DateFormat('yyyy-dd-MM').format(request.birthDate!),
          if (request.gender != null) 'gender': request.gender,
          if (request.bloodType != null) 'blood_type': request.bloodType,
          if (request.address != null) 'address': request.address,
        },
      );
      if (response.data['statusCode'] < 300) {
        wLog(response.data);

        return Right(
          AppResponse<UserModel>(
            success: true,
            message: response.data['message'],
            data: UserModel.fromJson(response.data['data']),
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
          ),
        );
      } else {
        throw HttpException(response.data['message'][0]);
      }
    } on DioException catch (e) {
      return Left(
        AppFailure(
          message: e.message ?? 'Error',
          stacktracte: StackTrace.current,
        ),
      );
    } on HttpException catch (e) {
      return Left(
        AppFailure(message: e.message, stacktracte: StackTrace.current),
      );
    } catch (e) {
      return Left(
        AppFailure(message: e.toString(), stacktracte: StackTrace.current),
      );
    }
  }

  Future<Either<AppFailure, AppResponse<UserModel>>> modifyUserInfo(
    CompleteUserInfoRequest request,
  ) async {
    try {
      final response = await _dio.post(
        AppConstants.patientEditProfilePath,
        data: {
          if (request.firstName != null) 'first_name': request.firstName,
          if (request.lastName != null) 'last_name': request.lastName,
          if (request.email != null) 'email': request.email,
          if (request.phone != null) 'phone': request.phone,
          if (request.gender != null) 'gender': request.gender,
          if (request.birthDate != null)
            'birth_date': DateFormat('yyyy-dd-MM').format(request.birthDate!),
          if (request.address != null) 'address': request.address,
          if (request.bloodType != null) 'blood_type': request.bloodType,
          if (getChildId() != null) 'child_id': getChildId(),
        },
      );
      wLog(response.data);
      if (response.data['statusCode'] < 300) {
        wLog(response.data);

        return Right(
          AppResponse<UserModel>(
            success: true,
            message: response.data['message'],
            data: UserModel.fromJson(response.data['data']),
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
          ),
        );
      } else {
        throw HttpException(parseStringList(response.data['message']));
      }
    } on DioException catch (e) {
      return Left(
        AppFailure(
          message: e.message ?? 'Error',
          stacktracte: StackTrace.current,
        ),
      );
    } on HttpException catch (e) {
      return Left(
        AppFailure(message: e.message, stacktracte: StackTrace.current),
      );
    } catch (e) {
      return Left(
        AppFailure(message: e.toString(), stacktracte: StackTrace.current),
      );
    }
  }

  Future<Either<AppFailure, AppResponse<UserModel>>> modifyDoctorInfo(
    ModifyDoctorInfoRequest request,
  ) async {
    final data = {
      if (request.firstName != null) 'first_name': request.firstName,
      if (request.lastName != null) 'last_name': request.lastName,
      if (request.email != null) 'email': request.email,
      if (request.phone != null) 'phone': request.phone,
      if (request.speciality != null) 'speciality': request.speciality,
      if (request.professionalTitle != null)
        'professional_title': request.professionalTitle,
      if (request.visitFee != null) 'visit_fee': request.visitFee,
      if (request.averageVisitDuration != null)
        'average_visit_duration': request.averageVisitDuration,
      if (request.experience != null) 'experience': request.experience,
      if (request.bookingType != null) 'booking_type': request.bookingType,
      if (request.status != null) 'status': request.status,
      if (request.photo != null)
        'photo': await MultipartFile.fromFile(
          request.photo!.path,
          filename: request.photo!.path.split('/').last,
        ),
      if (request.sign != null)
        'sign': await MultipartFile.fromFile(
          request.sign!.path,
          filename: request.sign!.path.split('/').last,
        ),
    };
    final requestBody = FormData.fromMap(data);
    try {
      final response = await _dio.post(
        AppConstants.doctorEditProfilePath,
        data: requestBody,
      );
      wLog(response.data);
      if (response.data['statusCode'] < 300) {
        wLog(response.data);

        return Right(
          AppResponse<UserModel>(
            success: true,
            message: response.data['message'],
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
          ),
        );
      } else {
        throw HttpException(parseStringList(response.data['message']));
      }
    } on DioException catch (e) {
      return Left(
        AppFailure(
          message: e.message ?? 'Error',
          stacktracte: StackTrace.current,
        ),
      );
    } on HttpException catch (e) {
      return Left(
        AppFailure(message: e.message, stacktracte: StackTrace.current),
      );
    } catch (e) {
      return Left(
        AppFailure(message: e.toString(), stacktracte: StackTrace.current),
      );
    }
  }

  Future<Either<AppFailure, AppResponse<UserModel>>> modifyUserPassword(
    ModifyPasswordRequest request, [
    Role role = Role.patient,
  ]) async {
    try {
      final response = await _dio.post(
        role.isPatient
            ? AppConstants.patientEditProfilePath
            : AppConstants.doctorEditProfilePath,
        data: {
          'password': request.newPassword,
          'old_password': request.oldPassword,
          'password_confirmation': request.newPassword,
        },
      );
      wLog(response.data);
      if (response.data['statusCode'] < 300) {
        wLog(response.data);

        return Right(
          AppResponse<UserModel>(
            success: true,
            message: 'Password has been updated successfully!',
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
          ),
        );
      } else {
        throw HttpException(parseStringList(response.data['message']));
      }
    } on DioException catch (e) {
      return Left(
        AppFailure(
          message: e.message ?? 'Error',
          stacktracte: StackTrace.current,
        ),
      );
    } on HttpException catch (e) {
      return Left(
        AppFailure(message: e.message, stacktracte: StackTrace.current),
      );
    } catch (e) {
      return Left(
        AppFailure(message: e.toString(), stacktracte: StackTrace.current),
      );
    }
  }

  Future<Either<AppFailure, AppResponse<List<UserModel>>>>
  fetchAllUserChildren() async {
    try {
      final response = await _dio.get(AppConstants.showAllChildrenPath);
      wLog(response.data);
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<List<UserModel>>(
            success: true,
            message: 'children fetched successfully',
            data:
                (response.data['items'] as List<dynamic>)
                    .map((child) => UserModel.fromJson(child))
                    .toList(),
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
          ),
        );
      } else {
        throw HttpException('children are not fetched');
      }
    } on DioException catch (e) {
      return Left(
        AppFailure(
          message: e.message ?? 'Error',
          stacktracte: StackTrace.current,
        ),
      );
    } on HttpException catch (e) {
      return Left(
        AppFailure(message: e.message, stacktracte: StackTrace.current),
      );
    } catch (e) {
      return Left(
        AppFailure(message: e.toString(), stacktracte: StackTrace.current),
      );
    }
  }

  Future<Either<AppFailure, AppResponse>> addChild(
    CompleteUserInfoRequest request,
  ) async {
    try {
      final response = await _dio.post(
        AppConstants.addChildPath,
        data: {
          'first_name': request.firstName,
          'last_name': request.lastName,
          'birth_date': DateFormat('yyyy-MM-dd').format(request.birthDate!),
          'gender': request.gender,
          'blood_type': request.bloodType,
          'address': request.address,
        },
      );
      wLog(response.data);
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            success: true,
            message: 'child added successfully',
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
          ),
        );
      } else {
        throw HttpException('child\'s not added');
      }
    } on DioException catch (e) {
      return Left(
        AppFailure(
          message: e.message ?? 'Error',
          stacktracte: StackTrace.current,
        ),
      );
    } on HttpException catch (e) {
      return Left(
        AppFailure(message: e.message, stacktracte: StackTrace.current),
      );
    } catch (e) {
      return Left(
        AppFailure(message: e.toString(), stacktracte: StackTrace.current),
      );
    }
  }

  Future<Either<AppFailure, AppResponse>> deleteChild(int childId) async {
    try {
      final response = await _dio.delete(
        AppConstants.deleteChildPath,
        queryParameters: {'child_id': childId},
      );
      wLog(response.data);
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse(
            success: true,
            message: 'child removed successfully',
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
          ),
        );
      } else {
        throw HttpException('child\'s not removed');
      }
    } on DioException catch (e) {
      return Left(
        AppFailure(
          message: e.message ?? 'Error',
          stacktracte: StackTrace.current,
        ),
      );
    } on HttpException catch (e) {
      return Left(
        AppFailure(message: e.message, stacktracte: StackTrace.current),
      );
    } catch (e) {
      return Left(
        AppFailure(message: e.toString(), stacktracte: StackTrace.current),
      );
    }
  }

  Future<Either<AppFailure, AppResponse<UserModel>>> showProfile([
    Role role = Role.patient,
    int? childId,
  ]) async {
    try {
      final response = await _dio.get(
        role.isPatient
            ? AppConstants.showProfilePath
            : AppConstants.doctorProfilePath,
        queryParameters:
            childId != null
                ? {'child_id': childId}
                : (getChildId() == null || !role.isPatient)
                ? null
                : {'child_id': getChildId()},
      );
      if (response.data['statusCode'] < 300) {
        return Right(
          AppResponse<UserModel>(
            data: UserModel.fromJson(
              role.isPatient ? response.data['data'] : response.data,
            ),
            success: true,
            message: 'account fetched successfully',
            statusCode: response.data['statusCode'],
            statusMessage: response.data['statusMessage'],
          ),
        );
      } else if (response.data['statusCode'] == 404) {
        throw HttpException('There is no schedules yet');
      } else {
        throw HttpException('account\'s not fetched');
      }
    } on DioException catch (e) {
      return Left(
        AppFailure(
          message: e.message ?? 'Error',
          stacktracte: StackTrace.current,
        ),
      );
    } on HttpException catch (e) {
      return Left(
        AppFailure(message: e.message, stacktracte: StackTrace.current),
      );
    } catch (e) {
      return Left(
        AppFailure(message: e.toString(), stacktracte: StackTrace.current),
      );
    }
  }

  Future<Either<AppFailure, AppResponse<UserModel>>> getUser() async {
    final Response response;
    try {
      response = await _dio.get(AppConstants.authWithTokenPath);
      if (response.data['statusCode']! < 300) {
        return Right(
          AppResponse<UserModel>(
            success: true,
            message: 'Successfully authenticated with token',
            data: UserModel.fromJson(response.data),
            statusCode: response.statusCode,
            statusMessage: response.statusMessage,
          ),
        );
      } else {
        throw (HttpException(response.data['error']));
      }
    } catch (e) {
      return Left(
        AppFailure(message: e.toString(), stacktracte: StackTrace.current),
      );
    }
  }

  Future<Either<AppFailure, AppResponse>> deleteSchdule({
    required int scheduleId,
  }) async {
    final Response response;
    try {
      response = await _dio.post(
        AppConstants.deleteFromSchedulePath,
        data: {'schedule_id': scheduleId},
      );
      if (response.data['statusCode']! < 300) {
        return Right(
          AppResponse(
            success: true,
            message: 'Schedule deleted successfully!',
            statusCode: response.statusCode,
            statusMessage: response.statusMessage,
          ),
        );
      } else {
        throw (HttpException('Schedule is not deleted'));
      }
    } catch (e) {
      return Left(
        AppFailure(message: e.toString(), stacktracte: StackTrace.current),
      );
    }
  }

  final Dio _dio;
}
