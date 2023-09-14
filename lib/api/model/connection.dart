import 'package:connectivity_plus/connectivity_plus.dart';

Future<bool> isInternetConnected() async {
  final connectivityResult = await Connectivity().checkConnectivity();
  if (connectivityResult == ConnectivityResult.none) {
    // No internet connection
    return false;
  } else {
    // There is an internet connection
    return true;
  }
}
