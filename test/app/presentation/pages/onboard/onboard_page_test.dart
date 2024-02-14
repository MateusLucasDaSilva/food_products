import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:food_products/app/presentation/pages/onboard/onboard_page.dart';

void main() {
  late Widget page;

  setUp(() {
    page = const MaterialApp(
      home: OnboardPage(),
    );
  });

  testWidgets('Should rendering first page of onboard', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(page);

    final Finder icon = find.byIcon(Icons.arrow_forward);
    final Finder image = find.byType(Image);
    final Finder texts = find.byType(Text);

    expect(icon, findsOneWidget);
    expect(image, findsOne);
    expect(texts, findsNWidgets(2));
  });

  testWidgets('Should rendering second page of onboard when tap icon', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(page);

    final Finder icon = find.byIcon(Icons.arrow_forward);

    await tester.tap(icon);
    await tester.pumpAndSettle();

    final Finder textButton = find.text('Explorar');
    final Finder image = find.byType(Image);
    final Finder text = find.byType(Text);

    expect(textButton, findsOne);
    expect(image, findsOne);
    expect(text, findsNWidgets(3));
  });
}
