import 'package:flutter/material.dart';

class ConfirmCancelButtons extends StatelessWidget {
  final String cancelText;
  final String confirmText;
  final VoidCallback? confirm;
  final VoidCallback? cancel;

  const ConfirmCancelButtons({
    super.key,
    this.cancelText = '取消',
    this.confirmText = '确定',
    this.confirm,
    this.cancel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            flex: 3,
            child: CustomizeButton(
              primary: Colors.red,
              text: cancelText,
              onPressed: cancel ?? () => Navigator.pop(context),
            ),
          ),
          Flexible(
            flex: 4,
            child: CustomizeButton(
              primary: Colors.green,
              text: confirmText,
              onPressed: confirm,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomizeButton extends StatelessWidget {
  final Color? primary;
  final String text;
  final VoidCallback? onPressed;

  const CustomizeButton({
    super.key,
    this.primary,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        backgroundColor: primary,
        textStyle: const TextStyle(color: Colors.white),
        padding: const EdgeInsets.symmetric(horizontal: 35),
      ),
      onPressed: onPressed,
      child: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }
}
