// import 'package:pdf/widgets.dart' as pw;

// ignore_for_file: unused_local_variable

import 'dart:io';
import 'dart:ui';

import 'package:print_table/print_table.dart';
import 'package:printing/printing.dart';
import 'package:savings_deposit/core/core_functionalities.dart';
import 'package:savings_deposit/presentation/pages/customer/widgets/customer_account_statement/widgets/statement_data_table.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:path_provider/path_provider.dart';

import 'package:savings_deposit/domain/customer/customer_statements/models/customer_statement_model.dart';

class StatementPdfContent {
  // pw.Divider divider = pw.Divider(thickness: 0.5, indent: 1, endIndent: 1);
  final PdfDocument document = PdfDocument();
  late PdfPage page;
  createAccountStatementDocument(
      List<UpdatedCustomerStatementTransaction> statementTransactions,
      CustomerStatementDetails customerStatementDetails,
      String currentDate,
      String currentTime,
      double _creditTotal,
      double _debitTotal) async {
    final List<String> stringList = [];
    List<List<String>> stringListList = [];
    List<int> hashCodeList = [];
    statementTransactions.map((e) {
      hashCodeList.add(e.hashCode);
      if (!hashCodeList.contains(e.hashCode)) {
        stringList.add(e.transactionId.toString());
        stringList.add(e.transactionDate.toString().split("T").first);
        stringList.add(e.description.toString());
        stringList.add(e.debitAmount.toString());
        stringList.add(e.creditAmount.toString());
        stringList.add(toRupeeFormat(e.balance!));
        stringListList.add(stringList);
      } else {
        List<String> list = [];
        list.add(e.transactionId.toString());
        list.add(e.transactionDate.toString().split("T").first);
        list.add(e.description.toString());
        list.add(e.debitAmount.toString());
        list.add(e.creditAmount.toString());
        list.add(toRupeeFormat(e.balance!));

        stringListList.add(list);
      }

      stringListList.remove([]);
    }).toList();
    stringListList.add([
      "",
      "",
      "Total ",
      toRupeeFormat(_debitTotal),
      toRupeeFormat(_creditTotal),
      ""
    ]);
    page = document.pages.add();

    List<String> _singleTransaction = [];
    List<List<String>> _transactions = [];

    page.graphics.drawString(
      "MABEN NIDHI LIMITED",
      PdfStandardFont(PdfFontFamily.courier, 12, style: PdfFontStyle.bold),
      bounds: const Rect.fromLTWH(1, 25, 1000, 500),
      format: PdfStringFormat(alignment: PdfTextAlignment.left),
    );
    page.graphics.drawString(
      customerStatementDetails.branchaddress1!,
      PdfStandardFont(
        PdfFontFamily.courier,
        7,
      ),
      bounds: const Rect.fromLTWH(1, 42, 1000, 500),
      format: PdfStringFormat(alignment: PdfTextAlignment.left),
    );
    page.graphics.drawString(
      customerStatementDetails.branchaddress5!,
      PdfStandardFont(
        PdfFontFamily.courier,
        7,
      ),
      bounds: const Rect.fromLTWH(1, 52, 1000, 500),
      format: PdfStringFormat(alignment: PdfTextAlignment.left),
    );
    page.graphics.drawString(
      customerStatementDetails.branchaddress4!,
      PdfStandardFont(
        PdfFontFamily.courier,
        7,
      ),
      bounds: const Rect.fromLTWH(1, 62, 1000, 500),
      format: PdfStringFormat(alignment: PdfTextAlignment.left),
    );
    page.graphics.drawString(
      customerStatementDetails.branchName!,
      PdfStandardFont(
        PdfFontFamily.courier,
        7,
      ),
      bounds: const Rect.fromLTWH(1, 72, 1000, 500),
      format: PdfStringFormat(alignment: PdfTextAlignment.left),
    );
    page.graphics.drawString(
      "Customer Name : ${customerStatementDetails.accountholderName!}",
      PdfStandardFont(
        PdfFontFamily.courier,
        7,
      ),
      bounds: const Rect.fromLTWH(1, 88, 1000, 500),
      format: PdfStringFormat(alignment: PdfTextAlignment.left),
    );
    page.graphics.drawString(
      "Customer Id : ${customerStatementDetails.customerid!}",
      PdfStandardFont(
        PdfFontFamily.courier,
        7,
      ),
      bounds: const Rect.fromLTWH(1, 98, 1000, 500),
      format: PdfStringFormat(alignment: PdfTextAlignment.left),
    );
    page.graphics.drawString(
      "Account type : ${customerStatementDetails.accountType!}",
      PdfStandardFont(
        PdfFontFamily.courier,
        7,
      ),
      bounds: const Rect.fromLTWH(1, 108, 1000, 500),
      format: PdfStringFormat(alignment: PdfTextAlignment.left),
    );
    page.graphics.drawString(
      "Account number : ${customerStatementDetails.accountNumber!}",
      PdfStandardFont(
        PdfFontFamily.courier,
        7,
      ),
      bounds: const Rect.fromLTWH(1, 118, 1000, 500),
      format: PdfStringFormat(alignment: PdfTextAlignment.left),
    );
    page.graphics.drawString(
      "Account Summary",
      PdfStandardFont(
        PdfFontFamily.courier,
        10,
        style: PdfFontStyle.bold,
      ),
      bounds: const Rect.fromLTWH(1, 135, 1000, 500),
      format: PdfStringFormat(alignment: PdfTextAlignment.left),
    );
    page.graphics.drawString(
      "Current balance : ${customerStatementDetails.currentbalance!}",
      PdfStandardFont(
        PdfFontFamily.courier,
        7,
      ),
      bounds: const Rect.fromLTWH(1, 150, 1000, 500),
      format: PdfStringFormat(alignment: PdfTextAlignment.left),
    );
    page.graphics.drawString(
      "------------------------------------------------------------------------------------------------------",
      PdfStandardFont(
        PdfFontFamily.courier,
        7,
      ),
      bounds: const Rect.fromLTWH(1, 170, 1000, 500),
      format: PdfStringFormat(alignment: PdfTextAlignment.left),
    );
    page.graphics.drawString(
      "${tabulate(stringListList.map((e) => e.map((e) => e).toList()).toList(), [
            'trans id',
            'Date',
            'Description',
            'Debit',
            'Credit',
            'Balance',
          ])} ",
      PdfStandardFont(PdfFontFamily.courier, 7),
      bounds: const Rect.fromLTWH(1, 180, 1000, 500),
      format: PdfStringFormat(alignment: PdfTextAlignment.left),
    );
    Directory? accountStatementDirectory = await getExternalStorageDirectory();
    File('${accountStatementDirectory!.path}/accoutStatement.pdf').writeAsBytes(
      document.save(),
      mode: FileMode.write,
    );
    // await Printing.sharePdf(
    //     bytes: await pdf.save(), filename: 'my-document.pdf');
  }
// }

// pw.TableRow statementTableRow(
//     {required String col1,
//     required String col2,
//     required String col3,
//     required String col4,
//     required String col5,
//     double? labelSize}) {
//   pw.Divider divider = pw.Divider(thickness: 0.5, indent: 1, endIndent: 1);
//   labelSize ?? 6;
//   return pw.TableRow(children: [
//     pw.Column(
//         crossAxisAlignment: pw.CrossAxisAlignment.center,
//         mainAxisAlignment: pw.MainAxisAlignment.center,
//         children: [
//           pw.Text(col1, style: pw.TextStyle(fontSize: labelSize)),
//           // divider
//         ]),
//     pw.Column(
//         crossAxisAlignment: pw.CrossAxisAlignment.center,
//         mainAxisAlignment: pw.MainAxisAlignment.center,
//         children: [
//           pw.Text(col2, style: pw.TextStyle(fontSize: labelSize)),
//           // divider
//         ]),
//     pw.Column(
//         crossAxisAlignment: pw.CrossAxisAlignment.center,
//         mainAxisAlignment: pw.MainAxisAlignment.center,
//         children: [
//           pw.Text(col3, style: pw.TextStyle(fontSize: labelSize)),
//           // divider
//         ]),
//     pw.Column(
//         crossAxisAlignment: pw.CrossAxisAlignment.center,
//         mainAxisAlignment: pw.MainAxisAlignment.center,
//         children: [
//           pw.Text(col4, style: pw.TextStyle(fontSize: labelSize)),
//           // divider
//         ]),
//     pw.Column(
//         crossAxisAlignment: pw.CrossAxisAlignment.center,
//         mainAxisAlignment: pw.MainAxisAlignment.center,
//         children: [
//           pw.Text(col5,
//               style: pw.TextStyle(
//                 fontSize: labelSize,
//               )),
//           // divider,
//         ])
//   ]);
}
