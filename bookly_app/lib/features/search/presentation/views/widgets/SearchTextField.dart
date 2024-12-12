// ignore: file_names
import 'package:bookly_app/features/search/presentation/manager/SearchCubit/SearchCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({
    super.key,
  });

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  String? data;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: TextField(
          onChanged: (value) {
            data = value;
          },
          decoration: InputDecoration(
            hintText: 'Search',
            suffixIcon: IconButton(
                onPressed: () {
                  BlocProvider.of<SearchCubit>(context)
                      .fetchSearchResultCubitMethod(searchWord: data!);
                },
                icon: const Icon(Icons.search)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
