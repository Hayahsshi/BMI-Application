import 'package:flutter/material.dart';
import 'package:bmi_calculator/brain_and_constant/consants.dart';

class RecommendationPage extends StatelessWidget {
  final String resultText;

  const RecommendationPage({super.key, required this.resultText});

  @override
  Widget build(BuildContext context) {
    String recommendation;

    if (resultText == 'Overweight') {
      recommendation = '''
Goals:
- Reduce body weight to a healthier range
- Improve overall fitness and health

Recommendations:

Diet:
- Balanced Diet: Focus on a balanced diet rich staples like leafy greens (e.g., ugu, ewedu), beans, brown rice, and lean proteins (e.g., fish, chicken).
- Portion Control: Be mindful of portion sizes to avoid overeating.
- Reduce Sugars and Refined Carbs: Limit intake of sugary foods, beverages, and refined carbohydrates such as white rice and white bread.
- Healthy Fats: Include healthy fats from sources like avocados (pear), nuts (e.g., groundnuts), seeds (e.g., sesame seeds), and palm oil, but in moderation.

Exercise:
- Aerobic Exercise: Engage in at least 150 minutes of moderate-intensity aerobic activity (like brisk walking, cycling, or swimming) per week.
- Strength Training: Include muscle-strengthening activities at least twice a week.
- Consistency: Make exercise a regular part of the daily routine.

Lifestyle:
- Stay Hydrated: Drink plenty of water throughout the day.
- Sleep Well: Aim for 7-9 hours of sleep per night to support overall health.
- Stress Management: Practice stress-reducing techniques like meditation, yoga, or deep breathing exercises.
      ''';
    } else if (resultText == 'Normal') {
      recommendation = '''
Goals:
- Maintain current healthy weight
- Support overall health and wellbeing

Recommendations:

Diet:
- Balanced Diet: Continue consuming a balanced diet with a variety of nutrients including local fruits (e.g., mangoes, oranges, pawpaw), vegetables, lean proteins (e.g., fish, chicken), and whole grains (e.g., millet, sorghum).
- Nutrient-Rich Foods: Focus on nutrient-dense foods like fruits, vegetables, lean proteins, whole grains, and healthy fats.
- Moderation: Enjoy all types of food in moderation to prevent weight gain.

Exercise:
- Regular Physical Activity: Aim for at least 150 minutes of moderate-intensity aerobic activity per week.
- Strength Training: Incorporate strength training exercises twice a week to maintain muscle mass and strength.
- Flexibility and Balance: Include activities that promote flexibility and balance, such as yoga or Pilates.

Lifestyle:
- Stay Hydrated: Drink enough water daily.
- Sleep Well: Ensure 7-9 hours of quality sleep each night.
- Mental Health: Engage in activities that support mental well-being, such as hobbies, socializing, and relaxation techniques.
      ''';
    } else {
      recommendation = '''
Goals:
- Gain weight to reach a healthier range
- Improve muscle mass and overall health

Recommendations:

Diet:
- Caloric Surplus: Increase calorie intake with nutrient-dense foods like yams, plantains, and nuts.
- Frequent Meals: Eat small, frequent meals throughout the day.
- Protein Intake: Focus on high-protein foods to build muscle mass (e.g., beans, eggs, dairy, legumes).
- Healthy Snacks: Include healthy snacks such as groundnuts, cashews, dried fruits, and nut butters.
- Healthy Fats: Incorporate sources of healthy fats like avocados (pear), palm oil, and fatty fish (e.g., mackerel, tilapia).

Exercise:
- Strength Training: Engage in strength training exercises to build muscle mass, at least three times a week.
- Light Aerobic Exercise: Include light to moderate aerobic activities to support cardiovascular health without excessive calorie burning.
- Consistency: Maintain a consistent exercise routine to support weight gain and muscle growth.

Lifestyle:
- Stay Hydrated: Drink sufficient water.
- Sleep Well: Aim for 7-9 hours of restorative sleep each night.
- Consult a Professional: Consider seeking advice from a healthcare provider or nutritionist to create a personalized plan.
      ''';
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Recommendations'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          recommendation,
          style: kBodyTextStyle,
        ),
      ),
    );
  }
}
