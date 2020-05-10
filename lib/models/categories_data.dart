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
    title: 'Polish',
    color: Colors.red,
  ),
  _Category(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
  ),
  _Category(
    id: 'c4',
    title: 'Quick & Easy',
    color: Colors.amber,
  ),
  _Category(
    id: 'c5',
    title: 'Party',
    color: Colors.blue,
  ),
  _Category(
    id: 'c6',
    title: 'Lunch',
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
    title: 'Fast Food',
    color: Colors.pink,
  ),
  _Category(
    id: 'c10',
    title: 'BBQ',
    color: Colors.teal,
  ),
];
