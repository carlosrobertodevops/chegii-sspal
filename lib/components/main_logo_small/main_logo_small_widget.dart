import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'main_logo_small_model.dart';
export 'main_logo_small_model.dart';

class MainLogoSmallWidget extends StatefulWidget {
  const MainLogoSmallWidget({super.key});

  @override
  State<MainLogoSmallWidget> createState() => _MainLogoSmallWidgetState();
}

class _MainLogoSmallWidgetState extends State<MainLogoSmallWidget> {
  late MainLogoSmallModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainLogoSmallModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Theme.of(context).brightness == Brightness.dark
          ? 'assets/images/chegii-sspal.png'
          : 'assets/images/chegii-sspal.png',
      width: 400.0,
      height: 250.0,
      fit: BoxFit.fitWidth,
      alignment: const Alignment(0.0, 0.0),
    );
  }
}
