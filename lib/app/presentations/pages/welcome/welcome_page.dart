import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../shared/app_svg.dart';
import '../../../shared/extensions/context_extentions.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              alignment: Alignment.topRight,
              child: TextButton(
                child: Text(
                  'Sign in',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                onPressed: () {},
              ),
            ),
            Column(
              children: [
                SvgPicture.asset(
                  width: context.mediaQuery.size.width * .28,
                  AppSvg.iconApp,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Tenha um maior conrole das suas importações com o YourTracker, comece a salvar os seus pacotes agora mesmo',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: context.mediaQuery.size.width,
              height: 56,
              child: ElevatedButton(
                child: Text(
                  'BUSCA RÁPIDA',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
