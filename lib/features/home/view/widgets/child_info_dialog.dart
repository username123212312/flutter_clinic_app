import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:our_flutter_clinic_app/core/blocs/user_bloc/user_bloc.dart';

import '../../../../core/models/usermodel.dart';
import '../../../../core/theme/app_pallete.dart';
import '../../../../core/utils/general_utils.dart';
import '../../controller/child_info_cubit/child_info_cubit.dart';

class ChildInfoDialog extends StatefulWidget {
  const ChildInfoDialog({super.key, required this.child});
  final UserModel child;

  @override
  State<ChildInfoDialog> createState() => _ChildInfoDialogState();
}

class _ChildInfoDialogState extends State<ChildInfoDialog> {
  @override
  void initState() {
    super.initState();
    _childInfoCubit = ChildInfoCubit(child: widget.child);
    _childInfoCubit.fetchChildInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Row(
          children: [
            Spacer(flex: 2),
            Flexible(
              flex: 5,
              child: Text(
                '${widget.child.firstName ?? 'No'} ${widget.child.lastName ?? 'Name'}',
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.copyWith(fontSize: 16),
              ),
            ),
            Spacer(),

            Flexible(
              child: IconButton(
                onPressed: () {
                  _childInfoCubit.fetchChildInfo();
                },
                icon: Icon(FontAwesomeIcons.arrowsRotate, size: 18),
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Gender',
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.copyWith(fontSize: 13),
            ),
            BlocBuilder<ChildInfoCubit, ChildInfoState>(
              bloc: _childInfoCubit,
              builder: (context, state) {
                return state.status.isLoading
                    ? CircularProgressIndicator(
                      constraints: BoxConstraints(
                        minHeight: 20,
                        minWidth: 20,
                        maxHeight: 30,
                        maxWidth: 30,
                      ),
                    )
                    : Text(
                      state.child.gender ?? 'No gender',
                      style: Theme.of(
                        context,
                      ).textTheme.labelMedium!.copyWith(fontSize: 13),
                    );
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Blood type',
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.copyWith(fontSize: 13),
            ),
            BlocBuilder<ChildInfoCubit, ChildInfoState>(
              bloc: _childInfoCubit,
              builder: (context, state) {
                return state.status.isLoading
                    ? CircularProgressIndicator(
                      constraints: BoxConstraints(
                        minHeight: 20,
                        minWidth: 20,
                        maxHeight: 30,
                        maxWidth: 30,
                      ),
                    )
                    : Text(
                      state.child.bloodType ?? 'no type',
                      style: Theme.of(
                        context,
                      ).textTheme.labelMedium!.copyWith(fontSize: 13),
                    );
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (context.read<UserBloc>().state.currentChildId == null)
              TextButton(
                onPressed: () {
                  _showSubmitDialog(context);
                },
                child: Text(
                  'delete',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontSize: 13,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            TextButton(
              onPressed: () {
                context.pop();
              },
              child: Text(
                'close',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  fontSize: 13,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Future<dynamic> _showSubmitDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          backgroundColor: Pallete.grayScaleColor200,

          content: Column(
            spacing: 20,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Are You Sure?',
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.copyWith(fontSize: 13),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    flex: 2,
                    child: BlocConsumer<ChildInfoCubit, ChildInfoState>(
                      bloc: _childInfoCubit,
                      listener: (context, state) {
                        if (state.status.isDone) {
                          context.read<UserBloc>().add(AllChildrenFetched());
                          context.pop();
                          context.pop();
                        }
                        if (state.status.isError) {
                          Fluttertoast.showToast(msg: state.message);
                        }
                      },
                      builder:
                          (_, state) =>
                              state.status.isLoading
                                  ? CircularProgressIndicator()
                                  : ElevatedButton(
                                    onPressed: () {
                                      _childInfoCubit.removeChild();
                                    },
                                    child: Text(
                                      'Yes',
                                      style: Theme.of(
                                        context,
                                      ).textTheme.labelMedium!.copyWith(
                                        fontSize: 13,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                    ),
                  ),
                  Spacer(),
                  Flexible(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        context.pop();
                      },
                      child: Text(
                        'Back',
                        style: Theme.of(context).textTheme.labelMedium!
                            .copyWith(fontSize: 13, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  late final ChildInfoCubit _childInfoCubit;
}
