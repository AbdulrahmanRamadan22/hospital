import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hospital_mange/core/networking/api_error_model.dart';
import 'package:hospital_mange/features/auth/profile/data/models/user_model.dart';
part 'profile_cuibt_state.freezed.dart';

@freezed
class ProfileState<T> with _$ProfileState<T> {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = Loading;
  const factory ProfileState.success(UserModel userModel) = Success;
  const factory ProfileState.error(ApiErrorModel apiErrorModel) = Error;
  // UploadeProfilePic
  const factory ProfileState.uploadingProfilePic() = UploadingProfilePic;
  /////////////// UpdateProfile
  const factory ProfileState.updateProfileStateLoading() =
      UpdateProfileStateLoading;
  const factory ProfileState.updateProfileStateSuccess() =
      UpdateProfileStateSuccess;
  const factory ProfileState.updateProfileStateError(dynamic error) =
      UpdateProfileStateError;
}
