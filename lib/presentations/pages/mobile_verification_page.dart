import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/bloc/user_bloc.dart';
import 'package:pinput/pinput.dart';

class MobileVerificationPage extends StatefulWidget {
  final String phoneNumber;

  final String name;

  const MobileVerificationPage(
      {Key? key, required this.phoneNumber, required this.name})
      : super(key: key);

  @override
  State<MobileVerificationPage> createState() => _MobileVerificationPageState();
}

class _MobileVerificationPageState extends State<MobileVerificationPage>
    with AutomaticKeepAliveClientMixin {
  late Timer _timer;
  int _start = 30;

  void startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  void initState() {
    startTimer();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Phone Number Verification"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(24, 64, 24, 24),
        child: Column(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Verification',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(30, 60, 87, 1),
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Enter the code sent to the number',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(133, 153, 170, 1),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  '+62 ${widget.phoneNumber}',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(30, 60, 87, 1),
                  ),
                ),
                const SizedBox(height: 64)
              ],
            ),
            SizedBox(
                height: 100,
                child: _FilledOtpInput(
                  phoneNumber: widget.phoneNumber,
                )),
            const SizedBox(height: 44),
            const Text(
              'Didn’t receive code?',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromRGBO(62, 116, 165, 1),
              ),
            ),
            GestureDetector(
              onTap: _start == 0
                  ? () {
                      setState(() {
                        _start = 30;
                        startTimer();
                      });
                      context.read<UserBloc>().add(
                          UserEvent.resendVerificationCode(
                              int.parse(widget.phoneNumber).toString(),
                              widget.name,
                              context));
                    }
                  : null,
              child: Text(
                _start == 0 ? 'Resend' : '$_start s Resend',
                style: TextStyle(
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                  color: _start == 0
                      ? const Color.fromRGBO(62, 116, 165, 1)
                      : Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _FilledOtpInput extends StatefulWidget {
  final String phoneNumber;

  const _FilledOtpInput({required this.phoneNumber});

  @override
  _FilledState createState() => _FilledState();
}

class _FilledState extends State<_FilledOtpInput> {
  final controller = TextEditingController();
  final focusNode = FocusNode();

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  bool showError = false;
  @override
  Widget build(BuildContext context) {
    const length = 6;
    const errorColor = Color.fromRGBO(255, 234, 238, 1);
    const fillColor = Color.fromRGBO(222, 231, 240, .57);
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        color: fillColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.transparent),
      ),
    );

    return SizedBox(
      height: 68,
      child: Pinput(
        length: length,
        controller: controller,
        focusNode: focusNode,
        defaultPinTheme: defaultPinTheme,
        onCompleted: (value) => context
            .read<UserBloc>()
            .add(UserEvent.registerVerif(widget.phoneNumber, value, context)),
        errorPinTheme: defaultPinTheme.copyWith(
          decoration: BoxDecoration(
            color: errorColor,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
