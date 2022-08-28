import 'package:ecommerce_app/src/features/authentication/auth_robot.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'account screen ...',
    (tester) async {
      final r = AuthRobot(tester);
      await r.pumpAccountScreen();
      await r.tapLogoutButton();
      r.expectLogoutDialogFound();
      await r.tapCancelButton();
      r.expectLogoutDialogNotFound();
    },
  );
  testWidgets(
    'account screen ...',
    (tester) async {
      final r = AuthRobot(tester);
      await r.pumpAccountScreen();
      await r.tapLogoutButton();
      r.expectLogoutDialogFound();
      await r.tapDialogLogoutButton();
      r.expectLogoutDialogNotFound();
    },
  );

  testWidgets(
    'Confirm logout failure',
    (tester) async {
      final r = AuthRobot(tester);
      await r.pumpAccountScreen();
      await r.tapLogoutButton();
      r.expectLogoutDialogFound();
      await r.tapDialogLogoutButton();
      r.expectLogoutDialogNotFound();
    },
  );
}
