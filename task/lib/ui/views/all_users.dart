import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/core/models/user_model.dart';
import 'package:task/core/view_models/allusers_viewmodel.dart';
import 'package:task/shared/app_constants.dart';
import 'package:task/ui/widgets/custom_listtile.dart';

class AllUsers extends StatelessWidget {
  AllUsers({super.key});
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstants.primaryColor,
        title: const Text("All Users"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Consumer<AllusersViewmodel>(
          builder: (context, viewmodel, child) {
            return FutureBuilder<List<UserModel>>(
                future: viewmodel.getAllUsers(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    return ListView.builder(
                        itemCount: snapshot.data?.length,
                        itemBuilder: (context, index) {
                          return CustomListtile(
                              userName: snapshot.data?[index].name ??
                                  "No username found");
                        });
                  }
                });
          },
        ),
      ),
    );
  }
}
