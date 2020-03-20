import 'strainType.dart';

class TypeDetails {
  int _item = 0;

  List<StrainType> _details = [
    StrainType(
        'Effects: physical sedation/sluggishness, "couch lock"',
        'Target Symptoms: anxiety, insomnia, pain, muscle spasms',
        'Best Time of Day: afterneed/before bed'),
    StrainType(
        'Effects: mix of indica & sativa. Results vary on flower"',
        'Target Symptoms: varies on flower',
        'Best Time of Day: varies on flower'),
    StrainType(
        'Effects: uplifting cerebral effect"',
        'Target Symptoms: depression, ADD/ADHD, fatigue, mood disorders',
        'Best Time of Day: early morning/throughout the day'),
    StrainType(
        'Effects: pain relief',
        'Target Symptoms: arthritis, multiple sclerosis, chronic pain, seizers, epilepsy, ect.',
        'Best Time of Day: early morning'),
  ];

  void setItem(int num) {
    _item = num;
  }

  String getEffects() {
    _details[_item].effects;
  }

  String getSymptoms() {
    _details[_item].symptoms;
  }

  String getTOD() {
    _details[_item].timeOfDay;
  }
}
