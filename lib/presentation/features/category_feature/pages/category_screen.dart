import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_court/presentation/features/settings_feature/view_model/cubit.dart';
import 'package:food_court/presentation/features/settings_feature/view_model/states.dart';

import '../../category_feature/widgets/category_widget.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  var vm = MealViewModel();

  @override
  void initState() {
    vm.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Categories"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              BlocBuilder<MealViewModel, MealsStates>(
                bloc: vm,
                builder: (context, state) {
                  switch (state) {
                    case LoadingState():
                      {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    case ErrorState():
                      {
                        return Center(
                          child: Center(
                            child: Text(state.errorMessage),
                          ),
                        );
                      }
                    case SuccessMealState():
                      {
                        var data = state.mealEntity;
                        return Expanded(
                          child: GridView.builder(
                            itemCount: data.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 5 / 6,
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                            ),
                            itemBuilder: (context, index) => CategoryWidget(
                              categoryData: data[index],
                            ),
                          ),
                        );
                      }
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}