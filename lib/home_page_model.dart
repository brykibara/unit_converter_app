import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  List<String> favorites = [];
  void addToFavorites(String item) => favorites.add(item);
  void removeFromFavorites(String item) => favorites.remove(item);
  void removeAtIndexFromFavorites(int index) => favorites.removeAt(index);
  void insertAtIndexInFavorites(int index, String item) =>
      favorites.insert(index, item);
  void updateFavoritesAtIndex(int index, Function(String) updateFn) =>
      favorites[index] = updateFn(favorites[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for inputField widget.
  FocusNode? inputFieldFocusNode;
  TextEditingController? inputFieldTextController;
  String? Function(BuildContext, String?)? inputFieldTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for resultField widget.
  FocusNode? resultFieldFocusNode;
  TextEditingController? resultFieldTextController;
  String? Function(BuildContext, String?)? resultFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputFieldFocusNode?.dispose();
    inputFieldTextController?.dispose();

    resultFieldFocusNode?.dispose();
    resultFieldTextController?.dispose();
  }
}
