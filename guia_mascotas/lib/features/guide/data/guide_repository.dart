import '../domain/guide_page.dart';

class GuideRepository {
  List<GuidePage> getPages() {
    return [
      GuidePage("Cuidados básicos 🐾"),
      GuidePage("Alimentación 🥗"),
      GuidePage("Salud 💉"),
      GuidePage("Ejercicio 🎾"),
    ];
  }
}