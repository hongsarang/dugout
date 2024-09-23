import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'signin_page1_widget.dart' show SigninPage1Widget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SigninPage1Model extends FlutterFlowModel<SigninPage1Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for display_name_input widget.
  FocusNode? displayNameInputFocusNode;
  TextEditingController? displayNameInputTextController;
  String? Function(BuildContext, String?)?
      displayNameInputTextControllerValidator;
  // State field(s) for gender_input widget.
  String? genderInputValue;
  FormFieldController<String>? genderInputValueController;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    displayNameInputFocusNode?.dispose();
    displayNameInputTextController?.dispose();
  }
}
