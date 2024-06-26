import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';



class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Center(child: Text("Body Mass Index")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: onboardList.length,
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
                itemBuilder: (context, index) => OnboardContent(
                  onboardData: onboardList[index],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onboardList.length,
                    (index) => Container(
                    height: 10,
                    width: 10,
                    margin: const EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: DotIndicator(isActive: index == _pageIndex)),
              ),
            ),
            const SizedBox(height: 20),
            ConstrainedBox(
              constraints:
              const BoxConstraints.tightFor(height: 40, width: 150),
              child: ElevatedButton(
                onPressed: () {
                  if (_pageIndex == onboardList.length - 1) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (index) => const InputPage(),
                      ),
                    );
                  }
                  _pageController.nextPage(
                      duration: const Duration(microseconds: 300),
                      curve: Curves.ease);
                },
                style: ButtonStyle(
                  padding: WidgetStateProperty.all<EdgeInsets>(
                      const EdgeInsets.only(left: 5, right: 5)),
                  backgroundColor: WidgetStateProperty.all(Colors.pink),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: Text(_pageIndex == onboardList.length - 1
                    ? "Start"
                    : "Continue"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class OnboardData {
  final String image;

  OnboardData(
      {required this.image});
}

final List<OnboardData> onboardList = [
  OnboardData(
      image: "assets/images/BMI4.jpg"),
  OnboardData(
      image: "assets/images/BM3.jpg"),
  OnboardData(
      image: "assets/images/BMI1.jpg"),
];

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key, required this.onboardData,
  });
  final OnboardData onboardData;


  @override
  Widget build(BuildContext context) {
    return
        SizedBox(
            height: MediaQuery.of(context).size.height*.2,
            child: Image.asset(onboardData.image,
            fit: BoxFit.fill,
            ));
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: isActive ? 10 : 4,
        width: 4,
        decoration: BoxDecoration(
            color: isActive
            // color: isActive ? primaryColor : primaryColor.withOpacity(0.4)
                ? Colors.white
                : Colors.white10.withOpacity(0.4),
            borderRadius: const BorderRadius.all(Radius.circular(12))));
  }
}