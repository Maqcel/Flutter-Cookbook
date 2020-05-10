import 'package:flutter/material.dart';

class _Category {
  final String id;
  final String title;
  final Color color;

  const _Category({
    @required this.id,
    @required this.title,
    @required this.color,
  });
}

const Data = const [
  _Category(
    id: 'c1',
    title: 'Italian',
    color: Colors.purple,
  ),
  _Category(
    id: 'c2',
    title: 'Quick & Easy',
    color: Colors.red,
  ),
  _Category(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
  ),
  _Category(
    id: 'c4',
    title: 'German',
    color: Colors.amber,
  ),
  _Category(
    id: 'c5',
    title: 'Light & Lovely',
    color: Colors.blue,
  ),
  _Category(
    id: 'c6',
    title: 'Exotic',
    color: Colors.green,
  ),
  _Category(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
  ),
  _Category(
    id: 'c8',
    title: 'Asian',
    color: Colors.lightGreen,
  ),
  _Category(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
  ),
  _Category(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
  ),
];
