import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:cleantdd/core/core.dart';

class AppScaford<T extends Bloc> extends StatefulWidget {
  const AppScaford({
    Key? key,
    required this.body,
    this.title,
    this.isBack = true,
    this.onReveiveArguments,
    this.onWillPop,
    this.padding = const EdgeInsets.all(Dimens.size16),
    this.safeArea = true,
    this.loadData,
  }) : super(key: key);
  final Widget body;
  final Widget? title;
  final Future Function(Object? params, T? bloc)? onReveiveArguments;
  final Function()? onWillPop;
  final Function(T? bloc)? loadData;
  final bool isBack;
  final EdgeInsets padding;
  final bool safeArea;

  @override
  State<AppScaford<T>> createState() => _AppScafordState<T>();
}

class _AppScafordState<T extends Bloc> extends State<AppScaford<T>> {
  T? bloc;

  @override
  void initState() {
    super.initState();
    bloc = GetIt.I.get<T>();
    WidgetsBinding.instance
        ?.addPostFrameCallback((_) => widget.loadData?.call(bloc));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args != null && widget.onReveiveArguments != null) {
      widget.onReveiveArguments?.call(args, bloc);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _willPopCallback(),
      child: BlocProvider.value(
        value: bloc!,
        child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: MyColors.backgroundColor,
          appBar: widget.title == null
              ? null
              : AppBar(
                  title: widget.title,
                ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            padding: widget.padding,
            child: SafeArea(
              top: widget.safeArea,
              bottom: widget.safeArea,
              left: widget.safeArea,
              right: widget.safeArea,
              child: widget.body,
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> _willPopCallback() async {
    widget.onWillPop?.call();
    return Future.value(widget.isBack);
  }
}
