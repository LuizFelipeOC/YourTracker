import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/app_colors.dart';
import '../../widgets/custom_app_bar.dart';

class SearchPackagePage extends StatefulWidget {
  const SearchPackagePage({super.key});

  @override
  State<SearchPackagePage> createState() => _SearchPackagePageState();
}

class _SearchPackagePageState extends State<SearchPackagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            CustomAppBar(
              title: 'Buscar Encomenda',
              leading: Icons.arrow_back,
              fnLeading: () => context.pop(),
            ),
            const SizedBox(height: 20),
            TextFormField(
              onTapOutside: (e) => FocusScope.of(context).unfocus(),
              cursorColor: AppColors.darkBackground,
              style: Theme.of(context).textTheme.bodyLarge,
              decoration: InputDecoration(
                hintText: 'Código de rastreio',
                suffixIcon: InkWell(
                  onTap: () {
                    FocusScope.of(context).unfocus();
                  },
                  child: const Icon(
                    Icons.search,
                    size: 30,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
