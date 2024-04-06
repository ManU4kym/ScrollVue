import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pageview/home_page.dart';

void main() {
  testWidgets('PageView with Smooth Indicators Test',
      (WidgetTester tester) async {
    // Build a MaterialApp containing your ScrollVuePage for testing
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: HomePage(),
        ),
      ),
    );

    // Verify that the PageView and SmoothIndicators are rendered correctly
    expect(find.byType(PageView), findsOneWidget);
    expect(find.byType(SmoothPageIndicator), findsOneWidget);

    // Perform some actions or test specific scenarios
    // For example, you might simulate scrolling to the next page
    await tester.drag(
        find.byType(PageView), const Offset(-400, 0)); // Simulate left swipe

    // Add assertions to verify the state of your UI after the action
    // For example, you might expect the SmoothIndicators to update
    await tester.pump(); // Rebuild the widget tree after the animation
    expect(find.byType(SmoothPageIndicators), findsOneWidget);
    // Add more assertions as needed

    // You can also test other interactions, animations, or edge cases here
  });
}
