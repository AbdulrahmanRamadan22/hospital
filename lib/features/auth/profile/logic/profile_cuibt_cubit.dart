import 'package:bloc/bloc.dart';
import 'package:hospital_mange/core/helper/constants.dart';
import 'package:hospital_mange/core/helper/shared_pref_helper.dart';
import 'package:hospital_mange/features/auth/profile/data/repo/profile_repo.dart';
import 'package:hospital_mange/features/auth/profile/logic/profile_cuibt_state.dart';

class ProfileCuibt extends Cubit<ProfileState> {
  final ProfileRepo _profileRepo;

  ProfileCuibt(this._profileRepo) : super(const ProfileState.initial());

  void getProfile() async {
    emit(const ProfileState.loading());

    // final token = await SharedPrefHelper.getData(key: SharedPrefKeys.token);

    final response =
        await _profileRepo.getProfile(token: "host__${SharedPrefValues.token}");

    response.when(success: (userData) {
      emit(ProfileState.success(userData));
    }, failure: (errorHandler) {
      emit(ProfileState.error(errorHandler));
    });
  }
}
