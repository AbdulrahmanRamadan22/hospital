import 'package:bloc/bloc.dart';
import 'package:hospital_mange/core/functions/upload_image_to_api.dart';
import 'package:hospital_mange/core/helper/constants.dart';
import 'package:hospital_mange/features/auth/profile/data/models/update_profile.dart';
import 'package:hospital_mange/features/auth/profile/data/repo/profile_repo.dart';
import 'package:hospital_mange/features/auth/profile/logic/profile_cuibt_state.dart';
import 'package:image_picker/image_picker.dart';

class ProfileCuibt extends Cubit<ProfileState> {
  XFile? profileImage;
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

//  UploadingProfilePic method
  UploadingProfilePic(XFile image) {
    profileImage = image;
    print(profileImage);
    emit(const ProfileState.uploadingProfilePic());
  }

  void emitUpdateProfile() async {
    emit(const ProfileState.loading());

    final response = await _profileRepo.updateProfile(
      token: "host__${SharedPrefValues.token}",
      updateProfile: UpdateProfile(
        avatar: await uploadeImageToApis(
          profileImage!,
        ),
      ),
    );
    response.when(success: (dynamic) {
      emit(const UpdateProfileStatesuccess());
      // SharedPrefValues.image = profileImage.toString();
    }, failure: (errorHandler) {
      emit(ProfileState.error(errorHandler));
    });
  }
}
