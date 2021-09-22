import 'package:flutter/material.dart';
import 'package:secure_application/secure_application.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: MyHomePage(),
      home: SecureApplication(
        autoUnlockNative: true,
        nativeRemoveDelay: 800,
        child: Builder(
          builder: (context) {
            var valueNotifier = SecureApplicationProvider.of(context);
            valueNotifier.secure();

            return SecureGate(
              blurr: 0,
              opacity: 0,
              // lockedBuilder: (context, secureNotifier) => Placeholder(),
              child: MyHomePage(),
            );
          },
        ),
      ),
      // builder: (_, __) => SecureApplication(
      //   autoUnlockNative: true,
      //   nativeRemoveDelay: 800,
      //   child: Builder(
      //     builder: (context) {
      //       var valueNotifier = SecureApplicationProvider.of(context);
      //       valueNotifier.secure();

      //       return SecureGate(
      //         blurr: 0,
      //         opacity: 0,
      //         // lockedBuilder: (context, secureNotifier) => Placeholder(),
      //         child: MyHomePage(),
      //       );
      //     },
      //   ),
      // ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.amber,
        child: Center(
          child: Text("HELLO!!!"),
        ),
      ),
    );
  }
}
