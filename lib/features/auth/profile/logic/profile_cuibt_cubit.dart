import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
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
  uploadingProfilePic(XFile image) {
    profileImage = image;
    print("55555555555555555555");
    print(profileImage!.path);
    emit(const ProfileState.uploadingProfilePic());
  }

  Future uploadImageToApis(String image) async {
    return MultipartFile.fromFile(
      image,
      filename: "https://res.cloudinary.com/dpq8atnxn/image/upload/v1$image",
    );
  }

  void emitUpdateProfile() async {
    emit(const ProfileState.loading());

    var image = await uploadImageToApis(profileImage!.path.toString());

    print("88888888888");

    print(image);

    final response = await _profileRepo.updateProfile(
      token: "host__${SharedPrefValues.token}",
      updateProfile: UpdateProfile(
        avatar: await uploadImageToApis(image),
      ),
    );

    response.when(success: (dynamic) {
      emit(const UpdateProfileStateSuccess());
      // SharedPrefValues.image = profileImage.toString();
    }, failure: (errorHandler) {
      emit(ProfileState.error(errorHandler));
    });
  }
}
