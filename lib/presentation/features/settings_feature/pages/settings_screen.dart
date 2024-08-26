import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_court/presentation/features/settings_feature/view_model/cubit.dart';
import 'package:food_court/presentation/features/settings_feature/view_model/states.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  var vm = MealViewModel();

  @override
  void initState() {
    vm.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MealViewModel, MealsStates>(
        bloc: vm,
        builder: (context, state) {
          switch (state) {
            case LoadingState():
              {
                return const Center(child: CircularProgressIndicator());
              }
            case ErrorState():
              {
                return const Center(child: Text("Error"));
              }
            case SuccessMealState():
              {
                var data = state.mealEntity;
                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) => Center(
                    child: Column(
                      children: [
                        Text(
                          data[index].mealName,
                        ),
                        Image.network(
                          data[index].mealUrl,
                          height: 200,
                          width: 200,
                        )
                      ],
                    ),
                  ),
                );
              }
          }
        },
      ),
    );
  }
}
