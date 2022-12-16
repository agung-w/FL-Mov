import 'package:flutter/material.dart';
import 'package:movie_app/presentations/widgets/filled_otp_input.dart';

class MobileVerificationPage extends StatefulWidget {
  final String phoneNumber;

  const MobileVerificationPage({Key? key, required this.phoneNumber})
      : super(key: key);

  @override
  State<MobileVerificationPage> createState() => _MobileVerificationPageState();
}

class _MobileVerificationPageState extends State<MobileVerificationPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobile Verification"),
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
            const SizedBox(height: 100, child: FilledOtpInput()),
            const SizedBox(height: 44),
            const Text(
              'Didn’t receive code?',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromRGBO(62, 116, 165, 1),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const Text(
                'Resend',
                style: TextStyle(
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                  color: Color.fromRGBO(62, 116, 165, 1),
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
