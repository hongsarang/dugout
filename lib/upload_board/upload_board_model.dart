import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'upload_board_widget.dart' show UploadBoardWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UploadBoardModel extends FlutterFlowModel<UploadBoardWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for board_name widget.
  FocusNode? boardNameFocusNode;
  TextEditingController? boardNameTextController;
  String? Function(BuildContext, String?)? boardNameTextControllerValidator;
  // State field(s) for category widget.
  FocusNode? categoryFocusNode;
  TextEditingController? categoryTextController;
  String? Function(BuildContext, String?)? categoryTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    boardNameFocusNode?.dispose();
    boardNameTextController?.dispose();

    categoryFocusNode?.dispose();
    categoryTextController?.dispose();
  }
}
