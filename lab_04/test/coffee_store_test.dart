import 'package:flutter_test/flutter_test.dart';
import 'package:lab_04/ice_americano.dart';
import 'package:lab_04/main.dart';

void main() {
  testWidgets('menu lists the four items', (WidgetTester tester) async {
    await tester.pumpWidget(const Lab04());

    expect(find.text('Coffee Shop Menu'), findsOneWidget);
    expect(find.text('Ice Americano'), findsOneWidget);
    expect(find.text('Ice Latte'), findsOneWidget);
    expect(find.text('Chocolate Muffin'), findsOneWidget);
    expect(find.text('Vanilla Muffin'), findsOneWidget);
  });

  testWidgets('tapping a card opens its screen', (WidgetTester tester) async {
    await tester.pumpWidget(const Lab04());

    await tester.tap(find.text('Ice Americano'));
    await tester.pumpAndSettle();

    expect(find.byType(IceAmericanoScreen), findsOneWidget);
  });

  testWidgets('back button returns to the menu', (WidgetTester tester) async {
    await tester.pumpWidget(const Lab04());
    await tester.tap(find.text('Ice Latte'));
    await tester.pumpAndSettle();

    await tester.pageBack();
    await tester.pumpAndSettle();

    expect(find.text('Coffee Shop Menu'), findsOneWidget);
  });
}
