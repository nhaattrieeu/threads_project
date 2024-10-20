import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:threads_project/core/config/config.dart';
import 'package:threads_project/presentation/threads/widgets/create_post.dart';
import 'package:threads_project/presentation/threads/widgets/thread_item.dart';

class ThreadsPage extends StatefulWidget {
  const ThreadsPage({super.key});

  static const String routeName = "/threads";

  @override
  State<ThreadsPage> createState() => _ThreadsPageState();
}

class _ThreadsPageState extends State<ThreadsPage> {
  late ScrollController _scrollController;
  StateMachineController? _machineController;
  SMINumber? pull;
  double _offset = 0;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.offset <= 0) {
        setState(() {
          _offset = _scrollController.offset.abs();
          pull?.value = _offset * 2;
          print(_machineController?.isActive);
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          controller: _scrollController,
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Stack(
                children: [
                  Container(
                    height: _offset + 48,
                    color: AppColors.white,
                    child: Center(
                      child: SizedBox(
                        width: 48,
                        height: 48,
                        child: RiveAnimation.asset(
                          AppRives.pullToRefresh,
                          fit: BoxFit.contain,
                          onInit: (artboard) {
                            _machineController =
                                StateMachineController.fromArtboard(
                                    artboard, "State Machine");
                            _machineController?.isActive = false;
                            artboard.addController(_machineController!);
                            pull = _machineController!
                                    .findInput<double>('Pull Threshold')
                                as SMINumber;
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: CreatePost(),
            ),
            SliverList.separated(
              itemCount: 50,
              separatorBuilder: (context, index) {
                return Container(
                  height: 0.3,
                  color: Theme.of(context).dividerColor,
                );
              },
              itemBuilder: (context, index) {
                return const ThreadItem();
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _machineController?.dispose();
    super.dispose();
  }
}
