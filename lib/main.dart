import 'package:flutter/material.dart';
import 'package:payment_integration/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
         primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

// import 'dart:convert';
// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:flutter_stripe/flutter_stripe.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   Stripe.publishableKey =
//       "pk_test_51NewdGSCXqqa0lY1f1IimC7BySOFELobgnN52EctlHJleb3YpRSZQAiGXMtEIQBfQVmPtvRNTJlUvWmaGaVwgljg00ozhbwTH8";
//   runApp(MaterialApp(
//     home: const MyApp(),
//     debugShowCheckedModeBanner: false,
//     theme: ThemeData(useMaterial3: true),
//   ));
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   Map<String, dynamic>? paymentIntent;

//   void makePayment() async {
//     try {
//       paymentIntent = await createPaymentIntent();

//       var gpay = const PaymentSheetGooglePay(
//         merchantCountryCode: "inr",
//         currencyCode: "inr",
//         testEnv: true,
//       );
//       await Stripe.instance.initPaymentSheet(
//           paymentSheetParameters: SetupPaymentSheetParameters(
//         paymentIntentClientSecret: paymentIntent!["client_secret"],
//        // style: ThemeMode.dark,
//         merchantDisplayName: "Sabir",
//         googlePay: gpay,
//       )).then((value) => log("Done")).onError((error, stackTrace) => log("Error: $error"));

//       displayPaymentSheet();
//     } catch (e) {
//       print("error: $e");
//     }
//   }

//   void displayPaymentSheet() async {
//     log("Sheet opened !!");
//     try {
//       log("Trying....");
//       await Stripe.instance.presentPaymentSheet(options: const PaymentSheetPresentOptions(timeout: 3,),).then((value) => log("Sheet done !!")).onError((error, stackTrace) => log("Error: $error")).whenComplete(() => log("Completed !!"));
//       log("Done !!");
//     } catch (e) {
//       print("Failed error: $e");
//     }
//   }

//   createPaymentIntent() async {
//     try {
//       Map<String, dynamic> body = {
//         "amount": "839",
//         "currency": "inr",
//       };

//       http.Response response = await http.post(
//           Uri.parse("https://api.stripe.com/v1/payment_intents"),
//           body: body,
//           headers: {
//             "Authorization":
//                 "Bearer sk_test_51NewdGSCXqqa0lY1g6Gi0BY1bIfKhZnJl1D4QVEWC9Uj59D10iUPOQrGaGNw1Ap4v1Vsh2pT8gWIZAq2LB309frB00L4lZ0rPR",
//             "Content-Type": "application/x-www-form-urlencoded",
//           });
//       return json.decode(response.body);
//     } catch (e) {
//       throw Exception(e.toString());
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             makePayment();
//           },
//           child: const Text("Pay"),
//         ),
//       ),
//     );
//   }
// }
