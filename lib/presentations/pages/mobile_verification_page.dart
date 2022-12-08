import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      appBar: AppBar(title: const Text("Mobile Verification")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(24, 64, 24, 24),
        child: Column(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Verification',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(30, 60, 87, 1),
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  'Enter the code sent to the number',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color.fromRGBO(133, 153, 170, 1),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  '+62 ${widget.phoneNumber}',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color.fromRGBO(30, 60, 87, 1),
                  ),
                ),
                const SizedBox(height: 64)
              ],
            ),
            const SizedBox(height: 100, child: FilledOtpInput()),
            const SizedBox(height: 44),
            Text(
              'Didn’t receive code?',
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: const Color.fromRGBO(62, 116, 165, 1),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Resend',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                  color: const Color.fromRGBO(62, 116, 165, 1),
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
