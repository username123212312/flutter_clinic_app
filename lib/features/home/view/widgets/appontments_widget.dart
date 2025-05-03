import 'dart:developer';

import 'package:flutter/material.dart';
import '../../../../core/utils/utils.dart';
import 'home_widgets.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AppontmentsWidget extends StatefulWidget {
  const AppontmentsWidget({super.key});

  @override
  State<AppontmentsWidget> createState() => _AppontmentsWidgetState();
}

class _AppontmentsWidgetState extends State<AppontmentsWidget> {
  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        _buildThreeSelectable(),
        _isLoading
            ? SliverToBoxAdapter(
              child: Skeletonizer(
                effect: ShimmerEffect(
                  // Animation duration
                ),
                child: _buildSkeletonList(),
              ),
            )
            : _buildList(),
      ],
    );
  }

  Widget _buildList() {
    return SliverAnimatedList(
      key: _listKey,
      initialItemCount: _items.length,
      itemBuilder:
          (_, index, animation) => _buildItem(_items[index], animation, index),
    );
  }

  Widget _buildSkeletonList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return AppointmentWidgetItem(
          title: 'title',
          subtitle: 'subtitle',
          date: DateTime.now(),
          timeRange: TimeRange(TimeOfDay.now(), TimeOfDay.now()),
          imagePath: 'assets/images/logo.webp',
        );
      },
    );
  }

  Widget _buildThreeSelectable() {
    return SliverAppBar(
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      elevation: 0,
      floating: true,
      collapsedHeight: screenHeight(context) * 0.101,
      toolbarHeight: screenHeight(context) * 0.1,
      title: ThreeSelectableWidget(
        titles: ['Pending', 'Finished', 'Canceled'],
        onChange: (newIndex) {
          log(newIndex.toString());
          _loadData();
        },
      ),
    );
  }

  Widget _buildItem(String item, Animation<double> animation, int index) {
    return ScaleTransition(
      scale: animation,
      child: AppointmentWidgetItem(
        title: 'dr. Kureha Yasmin $index',
        subtitle: 'Internal Medicine Specialist',
        timeRange: TimeRange(
          TimeOfDay(hour: 11, minute: 00),
          TimeOfDay(hour: 12, minute: 00),
        ),

        date: DateTime(2022, 5, 20),
        imagePath: _items[index],
      ),
    );
  }

  void _addItem() {
    final int newIndex = _items.length;
    _items.add('Item ${newIndex + 1}');
    _listKey.currentState?.insertItem(newIndex);
  }

  void _removeItem({int? index}) {
    final int removeIndex = index ?? _items.length - 1;

    // Add bounds checking
    if (removeIndex < 0 || removeIndex >= _items.length) {
      return; // Don't attempt to remove if index is invalid
    }

    final String removedItem = _items[removeIndex];
    setState(() {
      _items.removeAt(removeIndex);
    });

    _listKey.currentState?.removeItem(
      removeIndex,
      (context, animation) => _buildItem(removedItem, animation, removeIndex),
      duration: const Duration(milliseconds: 300),
    );
  }

  Future<void> _loadData() async {
    setState(() {
      _isLoading = true;
    });
    // Simulate network delay
    await Future.delayed(Duration(seconds: 5));

    setState(() {
      _isLoading = false;
    });
  }

  int _currentIndex = 0;
  bool _isLoading = true;

  final GlobalKey<SliverAnimatedListState> _listKey =
      GlobalKey<SliverAnimatedListState>();
  List<String> _items = [
    'assets/images/logo.webp',
    'assets/images/logo.webp',
    'assets/images/logo.webp',
    'assets/images/logo.webp',
  ];
}
