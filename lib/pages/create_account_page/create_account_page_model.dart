import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'create_account_page_widget.dart' show CreateAccountPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateAccountPageModel extends FlutterFlowModel<CreateAccountPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for SignupName widget.
  FocusNode? signupNameFocusNode;
  TextEditingController? signupNameTextController;
  String? Function(BuildContext, String?)? signupNameTextControllerValidator;
  // State field(s) for SignupEmail widget.
  FocusNode? signupEmailFocusNode;
  TextEditingController? signupEmailTextController;
  String? Function(BuildContext, String?)? signupEmailTextControllerValidator;
  // State field(s) for SignupPassword widget.
  FocusNode? signupPasswordFocusNode;
  TextEditingController? signupPasswordTextController;
  late bool signupPasswordVisibility;
  String? Function(BuildContext, String?)?
      signupPasswordTextControllerValidator;
  String? _signupPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password Invalid';
    }

    if (val.length < 6) {
      return 'Password too short';
    }
    if (val.length > 15) {
      return 'Password too long';
    }

    return null;
  }

  // State field(s) for SignupConfirmPasssword widget.
  FocusNode? signupConfirmPassswordFocusNode;
  TextEditingController? signupConfirmPassswordTextController;
  late bool signupConfirmPassswordVisibility;
  String? Function(BuildContext, String?)?
      signupConfirmPassswordTextControllerValidator;
  String? _signupConfirmPassswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password doesn\'t match';
    }

    if (val.length < 6) {
      return 'Requires at least 6 characters.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    signupPasswordVisibility = false;
    signupPasswordTextControllerValidator =
        _signupPasswordTextControllerValidator;
    signupConfirmPassswordVisibility = false;
    signupConfirmPassswordTextControllerValidator =
        _signupConfirmPassswordTextControllerValidator;
  }

  @override
  void dispose() {
    signupNameFocusNode?.dispose();
    signupNameTextController?.dispose();

    signupEmailFocusNode?.dispose();
    signupEmailTextController?.dispose();

    signupPasswordFocusNode?.dispose();
    signupPasswordTextController?.dispose();

    signupConfirmPassswordFocusNode?.dispose();
    signupConfirmPassswordTextController?.dispose();
  }
}
