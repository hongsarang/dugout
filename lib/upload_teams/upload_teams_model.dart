import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'upload_teams_widget.dart' show UploadTeamsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UploadTeamsModel extends FlutterFlowModel<UploadTeamsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for team_name widget.
  FocusNode? teamNameFocusNode;
  TextEditingController? teamNameTextController;
  String? Function(BuildContext, String?)? teamNameTextControllerValidator;
  // State field(s) for team_rank widget.
  FocusNode? teamRankFocusNode;
  TextEditingController? teamRankTextController;
  String? Function(BuildContext, String?)? teamRankTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    teamNameFocusNode?.dispose();
    teamNameTextController?.dispose();

    teamRankFocusNode?.dispose();
    teamRankTextController?.dispose();
  }
}
