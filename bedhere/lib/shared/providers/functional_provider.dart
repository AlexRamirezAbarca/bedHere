import 'package:bedhere/shared/widgets/alerts_template.dart';
import 'package:flutter/material.dart';

class FunctionalProvider extends ChangeNotifier {
  List<Widget> alerts = [];
  //? Se utilizara en paginas normales
  AnimationController? alertController;
  AnimationController? alertControllerContent;
  //? Se utilizara en las Notificaciones
  AnimationController? notificationController;

  showAlert({required GlobalKey key, required Widget content, bool closeAlert = false, bool animation = true}) {
    final newAlert = Container(
      key: key,
      color: Colors.transparent,
      child: AlertTemplate(content: content, keyToClose: key, dismissAlert: closeAlert, animation: animation));
    alerts.add(newAlert);
    notifyListeners();
    
  }

  addPage({required GlobalKey key, required Widget content}) {
    alerts.add(content);
    notifyListeners();
  }

  showNotification() {
    notificationController!.forward();
  }

  dismissNotification() {
    notificationController!.reverse();
  }

  dismissAlert({required GlobalKey key}) {
    debugPrint("MANDAR A BORRAR alert de: $key");
    alerts.removeWhere((alert) => key == alert.key);
    notifyListeners();
  }

  clearAllAlert() {
    alerts.clear();
    notifyListeners();
  }
}