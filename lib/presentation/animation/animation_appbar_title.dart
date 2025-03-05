import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: ScrollToTitleAnimation(),
      ),
    );
  }
}

class ScrollToTitleAnimation extends StatefulWidget {
  const ScrollToTitleAnimation({super.key});

  @override
  State<ScrollToTitleAnimation> createState() => _ScrollToTitleAnimationState();
}

class _ScrollToTitleAnimationState extends State<ScrollToTitleAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late ScrollController _scrollController;
  double _scrollOffset = 0.0;
  bool _isTitleVisible = false;

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    // Define the Tween for the animation
    _animation = Tween<double>(begin: 1.0, end: 0.0).animate(_controller);

    // Initialize the ScrollController
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    // Update the scroll offset
    setState(() {
      _scrollOffset = _scrollController.offset;
    });

    // Trigger animation based on scroll offset
    if (_scrollOffset > 100 && !_isTitleVisible) {
      _controller.forward();
      setState(() {
        _isTitleVisible = true;
      });
    } else if (_scrollOffset <= 100 && _isTitleVisible) {
      _controller.reverse();
      setState(() {
        _isTitleVisible = false;
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        SliverAppBar(
          title: _isTitleVisible
              ? const Text(
                  'Hello Flutter',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              : const SizedBox.shrink(),
          pinned: true,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Center(
              child: AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Opacity(
                    opacity: _animation.value,
                    child: Transform.translate(
                      offset: Offset(0, _animation.value * 50),
                      child: const Text(
                        'Hello Flutter',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return ListTile(
                title: Text('Item $index'),
              );
            },
            childCount: 50,
          ),
        ),
      ],
    );
  }
}
