import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomerProfilePic extends StatelessWidget {
  String imageUrl;
  String customerName;
  CustomerProfilePic(
      {Key? key, required this.imageUrl, required this.customerName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      child: SizedBox(
        width: 210,
        height: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 200,
                child: imageUrl == null
                    ? Image.asset("assets/images/default_pro_pic.png")
                    : Image.network(
                        imageUrl,
                        errorBuilder: (BuildContext contex, Object exception,
                            StackTrace? stackTrace) {
                          return Image.asset(
                              "assets/images/default_pro_pic.png");
                        },
                      )),
            Flexible(
              child: Text(
                customerName,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
