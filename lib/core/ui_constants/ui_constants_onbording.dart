import 'package:projec_one_course/core/resoures/app_icon.dart';
import 'package:projec_one_course/feature/Onboading/ui_model/ui_model_onbording.dart';

List<OnbordingScreenUiModel> onbordingScreens = [
  OnbordingScreenUiModel(
    image: AppIcon.onboardingOne,
    title: "Manage your tasks",
    description:
        "You can easily manage all of your daily tasks in DoMe for free",
  ),
  OnbordingScreenUiModel(
    image: AppIcon.onboardingThere,
    title: "Orgonaize your tasks",
    description:
        "You can organize your daily tasks by adding your tasks into separate categories",
  ),
  OnbordingScreenUiModel(
    image: AppIcon.onboardingTwo,
    title: "Create daily routine",
    description:
        "In Uptodo  you can create your personalized routine to stay productive",
  ),
];

// this file contains the ui constants for the onboarding screen list of pages 