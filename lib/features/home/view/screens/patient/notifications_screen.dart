import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/utils.dart';
import '../../../controller/notifications_cubit/notifications_cubit.dart';
import '../../widgets/notification_card.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  void initState() {
    super.initState();
    _notificationsCubit.fetchAllNotifications();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        scrolledUnderElevation: 0,
        iconTheme: IconThemeData(size: 35),
        title: Text(
          'Notifications',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: 20,
            color: Pallete.black1,
          ),
        ),
        toolbarHeight: screenHeight(context) * 0.1,
        backgroundColor: Pallete.grayScaleColor0,
        actions: [
          BlocBuilder<NotificationsCubit, NotificationsState>(
            bloc: _notificationsCubit,
            builder: (context, state) {
              return IconButton(
                onPressed: () {
                  _notificationsCubit.fetchAllNotifications();
                },
                icon: Icon(Icons.refresh, size: 24),
              );
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        onRefresh: () async {
          _notificationsCubit.fetchAllNotifications();
        },
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: BlocConsumer<NotificationsCubit, NotificationsState>(
            bloc: _notificationsCubit,
            listener: (context, state) {
              if (state.status.isLoading) {
                LoadingOverlay().show(context);
              } else {
                LoadingOverlay().hideAll();
                showToast(msg: state.message);
              }
            },
            builder: (context, state) {
              if (state.notifications.isEmpty) {
                return _buildEmptyNotifications(context);
              }
              return Skeletonizer(
                enabled: state.status.isLoading,
                child: SizedBox(
                  height: screenHeight(context) * 0.8,
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount:
                        state.status.isLoading
                            ? 10
                            : state.notifications.length,
                    itemBuilder: (context, index) {
                      if (state.status.isLoading) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: NotificationCard(
                            title: 'Opengl',
                            subtitle: 'Vulkan',
                            onDelete: () {},
                          ),
                        );
                      }
                      final notification = state.notifications[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: NotificationCard(
                          title: notification.data?['title'],
                          subtitle: notification.data?['body'],
                          onDelete: () {},
                        ),
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyNotifications(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: screenHeight(context) * 0.25),
          Image.asset(
            'assets/images/empty_notifications.png',
            width: screenWidth(context) * 0.5,
            height: screenHeight(context) * 0.2,
          ),
          Text(
            'No Notifications Yet',
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: Pallete.black1,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  final _notificationsCubit = NotificationsCubit();
}
