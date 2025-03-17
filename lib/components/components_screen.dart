import 'package:flutter/material.dart';
import 'component_detail_screen.dart';
import '/components/display/text_display.dart';
import '/components/display/image_display.dart'; // Thêm lại import
import '/components/input/text_field.dart';
import '/components/input/password_field.dart';
import '/components/layout/column_layout.dart';
import '/components/layout/row_layout.dart';

class ComponentsScreen extends StatelessWidget {
  const ComponentsScreen({super.key}); // Thêm const và super.key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UI Components List')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Text'),
            subtitle: Text('Displays text'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ComponentDetailScreen(
                  title: 'Text Detail',
                  child: TextDisplay(),
                )),
              );
            },
          ),
          ListTile(
            title: Text('Image'),
            subtitle: Text('Displays an image'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ComponentDetailScreen(
                  title: 'Image Detail',
                  child: ImageDisplay(), // Không còn lỗi
                )),
              );
            },
          ),
          ListTile(
            title: Text('TextField'),
            subtitle: Text('Input field for text'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ComponentDetailScreen(
                  title: 'TextField Detail',
                  child: CustomTextField(),
                )),
              );
            },
          ),
          ListTile(
            title: Text('PasswordField'),
            subtitle: Text('Input field for passwords'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ComponentDetailScreen(
                  title: 'PasswordField Detail',
                  child: CustomPasswordField(),
                )),
              );
            },
          ),
          ListTile(
            title: Text('Column'),
            subtitle: Text('Arranges elements vertically'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ComponentDetailScreen(
                  title: 'Column Detail',
                  child: ColumnLayout(),
                )),
              );
            },
          ),
          ListTile(
            title: Text('Row'),
            subtitle: Text('Arranges elements horizontally'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ComponentDetailScreen(
                  title: 'Row Detail',
                  child: RowLayout(),
                )),
              );
            },
          ),
        ],
      ),
    );
  }
}