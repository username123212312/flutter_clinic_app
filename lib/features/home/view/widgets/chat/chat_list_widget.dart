import 'package:our_flutter_clinic_app/core/models/usermodel.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';
import 'package:our_flutter_clinic_app/features/home/model/chat/chat_model.dart';
import 'package:search_page/search_page.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../../core/blocs/chat_bloc/chat_bloc.dart';
import '../../../../../core/services/pusher_service/pusher_client.dart';
import '../../../../../core/widgets/blank_content.dart';
import '../../../../../core/widgets/start_up_container.dart';
import '../../../controller/chat_doctors_list_cubit/chat_doctors_list_cubit.dart';
import 'chat_list_item.dart';

class ChatListWidget extends StatelessWidget {
  const ChatListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final authState = context.read<AuthBloc>().state;
    final currentUser = authState.authUser!.user!;
    final chatBloc = context.read<ChatBloc>();
    eLog(authState);
    return StartUpContainer(
      onInit: () async {
        chatBloc.add(ChatStarted());
        context.read<ChatDoctorsListCubit>().fetchDoctors();

        PusherService.init(token: authState.token!);
      },
      onDisposed: () {
        PusherService.instance.disconnect();
      },
      child: Scaffold(
        body: RefreshIndicator(
          onRefresh: () async {
            chatBloc.add(const ChatStarted());
            context.read<ChatDoctorsListCubit>().fetchDoctors();
          },
          child: BlocConsumer<ChatBloc, ChatState>(
            listener: (_, __) {},
            builder: (context, state) {
              if (state.chats.isEmpty && !state.status.isLoading) {
                return SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  child: SizedBox(
                    height: screenHeight(context) * 0.65,
                    child: const BlankContent(
                      content: "No chat available",
                      icon: Icons.chat_rounded,
                    ),
                  ),
                );
              }

              return Skeletonizer(
                effect: SoldColorEffect(color: Pallete.grayScaleColor300),
                enabled: state.status.isLoading,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    if (state.status.isLoading) {
                      return ChatListItem(
                        key: ValueKey(index),
                        item: ChatEntity(
                          id: index,
                          isPrivate: 0,
                          createdAt: 'createdAt',
                          updatedAt: 'updatedAt',
                          participants: [],
                        ),
                        currentUser: currentUser,
                        onPressed: (chat) {},
                      );
                    }
                    final item = state.chats[index];

                    return ChatListItem(
                      key: ValueKey(item.id),
                      item: item,
                      currentUser: currentUser,
                      onPressed: (chat) {
                        chatBloc.add(ChatSelected(chat));
                        context.pushNamed(AppRouteConstants.chatRouteName);
                      },
                    );
                  },
                  separatorBuilder: (_, __) => const Divider(height: 1.5),
                  itemCount: state.status.isLoading ? 10 : state.chats.length,
                ),
              );
            },
          ),
        ),
        floatingActionButton:
            BlocBuilder<ChatDoctorsListCubit, ChatDoctorsListState>(
              builder: (context, state) {
                eLog(state);
                return Visibility(
                  visible: authState.authUser?.user?.role?.isPatient ?? true,
                  child: FloatingActionButton(
                    onPressed: () => _showSearch(context, state.doctors),
                    child: Icon(Icons.search, color: Pallete.grayScaleColor0),
                  ),
                );
              },
            ),
      ),
    );
  }

  void _showSearch(BuildContext context, List<UserModel> users) {
    showSearch(
      context: context,
      delegate: SearchPage<UserModel>(
        barTheme: Theme.of(context).copyWith(
          appBarTheme: const AppBarTheme(
            // Applies globally to the search app bar
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(size: 24, color: Colors.black),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            hintStyle: TextStyle(color: Colors.grey), // hint text color
            border: InputBorder.none,
          ),
        ),
        searchStyle: Theme.of(
          context,
        ).textTheme.labelMedium!.copyWith(fontSize: 17, color: Colors.black),
        builder: (user) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 0.0),
            child: ListTile(
              tileColor: Pallete.grayScaleColor200,
              leading: CircleAvatar(
                backgroundColor: Pallete.grayScaleColor300,
                child: Image.asset(
                  'assets/icons/user.png',
                  width: 24,
                  height: 24,
                  fit: BoxFit.contain,
                ),
              ),
              title: Text(
                '${user.firstName ?? 'No'} ${user.lastName ?? 'User'}',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                user.speciality ?? 'No spec',
                style: TextStyle(color: Pallete.sliverSand),
              ),
              onTap: () {
                context.read<ChatBloc>().add(UserSelected(user));
                context.pushNamed(AppRouteConstants.chatRouteName);
              },
            ),
          );
        },
        showItemsOnEmpty: true,
        filter: (user) {
          return [user.firstName];
        },
        items: users,
        failure: Center(child: Text('No users found')),
      ),
    );
  }
}
