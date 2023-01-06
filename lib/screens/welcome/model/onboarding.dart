class OnBoarding {
  final String imagePath;
  final String headingText;
  final String? paragraphText;
  final String buttonText;

  OnBoarding({
    required this.imagePath,
    required this.headingText,
    this.paragraphText,
    required this.buttonText,
  });

  static List<OnBoarding> list = [
    OnBoarding(
      imagePath: 'assets/image_assets/welcomeImage1.png',
      headingText: 'WELCOME TO\n NIKE',
      paragraphText: null,
      buttonText: 'Get Started',
    ),
    OnBoarding(
      imagePath: 'assets/image_assets/welcomeImage2.png',
      headingText: 'Let’s Start Journey\n With Nike',
      paragraphText: 'Smart, Gorgeous & Fashionable Collection Explore Now',
      buttonText: 'Next',
    ),
    OnBoarding(
      imagePath: 'assets/image_assets/welcomeImage3.png',
      headingText: 'You Have the\n Power To',
      paragraphText: 'There Are Many Beautiful And Attractive Plants To Your Room',
      buttonText: 'Get Started',
    ),
  ];
}
