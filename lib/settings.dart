import 'package:cookbook_app/models/settings_data.dart';
import 'package:flutter/material.dart';

import 'main_drawer.dart';

class Settings extends StatefulWidget {
  static const String routeName = '/settings';
  final Function settings;
  final SettingsData settingsData;
  Settings(this.settings, this.settingsData);
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  var _isGlutenFree = false;
  var _isVegerian = false;
  var _isVegan = false;
  var _isLascoteFree = false;
  var _savePressed = false;

  @override
  initState() {
    _isVegerian = widget.settingsData.vegetarian;
    _isVegan = widget.settingsData.vegan;
    _isLascoteFree = widget.settingsData.lactose;
    _isGlutenFree = widget.settingsData.gluten;
    super.initState();
  }

  Widget buildSwitch(
      String title, String subtitle, var changeState, Function _setState) {
    return Column(
      children: <Widget>[
        SwitchListTile(
          title: Text(title),
          value: changeState,
          subtitle: Text(subtitle),
          onChanged: _setState,
        ),
        Divider(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final SettingsData selectedSettings = SettingsData(
                  gluten: _isGlutenFree,
                  lactose: _isLascoteFree,
                  vegan: _isVegan,
                  vegetarian: _isVegerian);
              widget.settings(selectedSettings);
              setState(() {
                _savePressed = true;
              });
            },
          )
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Adjust your meal selection',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                buildSwitch('Gluten-free', 'Show\'s only gluten-free meals',
                    _isGlutenFree, (newValue) {
                  setState(() {
                    _isGlutenFree = newValue;
                    _savePressed = false;
                  });
                }),
                buildSwitch('Vegan', 'Show\'s only Vegan meals', _isVegan,
                    (newValue) {
                  setState(() {
                    _isVegan = newValue;
                    _savePressed = false;
                  });
                }),
                buildSwitch(
                    'Vegetarian', 'Show\'s only Vegetarian meals', _isVegerian,
                    (newValue) {
                  setState(() {
                    _isVegerian = newValue;
                    _savePressed = false;
                  });
                }),
                buildSwitch('Lactose-free', 'Show\'s only lactose-free meals',
                    _isLascoteFree, (newValue) {
                  setState(() {
                    _isLascoteFree = newValue;
                    _savePressed = false;
                  });
                }),
                if (_savePressed)
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Center(
                      child: Text(
                        'Settings saved!',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
