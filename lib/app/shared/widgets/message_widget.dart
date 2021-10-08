import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const MessageWidget({@required this.onPressed, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
          padding: EdgeInsets.only(top: 30),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor,
              ),
              child: Wrap(
                children: <Widget>[
                  Icon(
                    Icons.cached,
                    color: Theme.of(context).accentColor,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3, left: 5),
                    child: Text(
                      'Nenhuma resultado encontado!',
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                  ),
                ],
              ),
              onPressed: onPressed)),
    );
  }
}
