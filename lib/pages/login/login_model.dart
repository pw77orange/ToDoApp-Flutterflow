import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for Signup-EmailAdress widget.
  FocusNode? signupEmailAdressFocusNode;
  TextEditingController? signupEmailAdressTextController;
  String? Function(BuildContext, String?)?
      signupEmailAdressTextControllerValidator;
  String? _signupEmailAdressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for SignUp-Password widget.
  FocusNode? signUpPasswordFocusNode;
  TextEditingController? signUpPasswordTextController;
  late bool signUpPasswordVisibility;
  String? Function(BuildContext, String?)?
      signUpPasswordTextControllerValidator;
  String? _signUpPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for Signup-ConfirmPassword widget.
  FocusNode? signupConfirmPasswordFocusNode;
  TextEditingController? signupConfirmPasswordTextController;
  late bool signupConfirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      signupConfirmPasswordTextControllerValidator;
  String? _signupConfirmPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm Password is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for SignIn-Email widget.
  FocusNode? signInEmailFocusNode;
  TextEditingController? signInEmailTextController;
  String? Function(BuildContext, String?)? signInEmailTextControllerValidator;
  String? _signInEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    return null;
  }

  // State field(s) for SignIn-Password widget.
  FocusNode? signInPasswordFocusNode;
  TextEditingController? signInPasswordTextController;
  late bool signInPasswordVisibility;
  String? Function(BuildContext, String?)?
      signInPasswordTextControllerValidator;
  String? _signInPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    signupEmailAdressTextControllerValidator =
        _signupEmailAdressTextControllerValidator;
    signUpPasswordVisibility = false;
    signUpPasswordTextControllerValidator =
        _signUpPasswordTextControllerValidator;
    signupConfirmPasswordVisibility = false;
    signupConfirmPasswordTextControllerValidator =
        _signupConfirmPasswordTextControllerValidator;
    signInEmailTextControllerValidator = _signInEmailTextControllerValidator;
    signInPasswordVisibility = false;
    signInPasswordTextControllerValidator =
        _signInPasswordTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    signupEmailAdressFocusNode?.dispose();
    signupEmailAdressTextController?.dispose();

    signUpPasswordFocusNode?.dispose();
    signUpPasswordTextController?.dispose();

    signupConfirmPasswordFocusNode?.dispose();
    signupConfirmPasswordTextController?.dispose();

    signInEmailFocusNode?.dispose();
    signInEmailTextController?.dispose();

    signInPasswordFocusNode?.dispose();
    signInPasswordTextController?.dispose();
  }
}
