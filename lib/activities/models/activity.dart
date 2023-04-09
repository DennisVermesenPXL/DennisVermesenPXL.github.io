import 'package:flutter/material.dart';

class Activity {
  final Image image;
  final String title;
  final String description;
  final String? note;
  final String? location;
  final String date;
  final String? routeName;

  Activity.withNetworkImage({
    required String imageUrl,
    required this.title,
    required this.description,
    this.note,
    this.location,
    required this.date,
    this.routeName,
  }) : image = Image.network(
          imageUrl,
          fit: BoxFit.fitWidth,
        );

  Activity.withAssetImage({
    required String imageName,
    required this.title,
    required this.description,
    this.note,
    this.location,
    required this.date,
    this.routeName,
  }) : image = Image.asset(
          'images/$imageName',
          fit: BoxFit.fitWidth,
        );
}

List<Activity> seminars = [
  Activity.withNetworkImage(
    imageUrl:
        'https://uynguyen.github.io/Post-Resources/CleanCode/CleanCode.jpg',
    title: 'Interacto – Clean Coding',
    description:
        'Nadat Interacto duidelijk heeft gemaakt waarom clean code belangrijk is, hebben ze ons enkele best practices aangeleerd om zelf clean code toe te passen.',
    date: '1 maart 2022, 13:30 - 17:00',
    location: 'Hogeschool PXL, G-blok',
    routeName: 'selectie',
  ),
];

List<Activity> popSessions = [];

List<Activity> innovationRoutes = [];

List<Activity> engagements = [];
