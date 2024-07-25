import '/components/task_tile_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'project_tile_widget.dart' show ProjectTileWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProjectTileModel extends FlutterFlowModel<ProjectTileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for taskTile component.
  late TaskTileModel taskTileModel;

  @override
  void initState(BuildContext context) {
    taskTileModel = createModel(context, () => TaskTileModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    taskTileModel.dispose();
  }
}
