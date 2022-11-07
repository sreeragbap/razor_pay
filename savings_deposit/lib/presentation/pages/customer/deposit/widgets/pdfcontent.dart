import 'dart:io';
import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:number_to_words/number_to_words.dart';
import 'package:savings_deposit/presentation/pages/customer/withdrawal/widgets/all_cards.dart';

class PdfCreator {
  pdfCreation({
    String? accountNumber,
    String? transactionType,
    int? amount,
    String? date,
    String? customerName,
    String? customerId,
    String? employeeName,
    String? employeeId,
    String? branchName,
    String? branch,
    String? time,
    String? type,
    String? chequeNumber,
    String? coapplicantName,
    String? coapplicantRights,
    String? nomineeName,
    String? customerBankName,
    String? bankAccountNumber,
    int? transId,
    String? branchBank,
    String? ifscCode,
  }) async {
    final ByteData logo = await rootBundle.load('assets/icons/macom.png');
    final Uint8List byteList = logo.buffer.asUint8List();
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
          build: (pw.Context context) {
            return pw.ListView(
              children: [
                pw.Row(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    mainAxisAlignment: pw.MainAxisAlignment.start,
                    children: [
                      pw.Padding(
                        padding: const pw.EdgeInsets.all(5),
                        child: pw.SizedBox(
                          width: 200,
                          child: pw.Column(children: [
                            pw.SizedBox(height: 20),
                            pw.Row(
                                mainAxisAlignment: pw.MainAxisAlignment.center,
                                children: [
                                  pw.Container(
                                    child: pw.Image(
                                        pw.MemoryImage(
                                          byteList,
                                        ),
                                        height: 40,
                                        fit: pw.BoxFit.contain),
                                  ),
                                  pw.SizedBox(width: 5),
                                  pw.Column(children: [
                                    pw.Text(
                                      'MABEN NIDHI LIMITED',
                                      style: pw.TextStyle(
                                        fontSize: 15,
                                        fontBold: pw.Font.courierBold(),
                                      ),
                                    ),
                                    pw.Text(
                                      'Registered Office : $branchName',
                                      style: const pw.TextStyle(
                                        fontSize: 8,
                                      ),
                                    ),
                                  ])
                                ]),
                            pw.SizedBox(height: 10),
                            type == "Deposit"
                                ? pw.Text(
                                    'SAVINGS DEPOSIT PAY - IN - SLIP',
                                    style: pw.TextStyle(
                                      fontSize: 10,
                                      fontBold: pw.Font.helveticaBold(),
                                    ),
                                  )
                                : pw.SizedBox(),
                            type == "Withdraw"
                                ? pw.Text(
                                    'SAVINGS DEPOSIT WITHDRAWAL SLIP',
                                    style: pw.TextStyle(
                                      fontSize: 10,
                                      fontBold: pw.Font.helveticaBold(),
                                    ),
                                  )
                                : pw.SizedBox(),
                            type == 'NewSd'
                                ? pw.Text(
                                    'SAVINGS DEPOSIT NEW - SD - SLIP',
                                    style: pw.TextStyle(
                                      fontSize: 10,
                                      fontBold: pw.Font.helveticaBold(),
                                    ),
                                  )
                                : pw.SizedBox(),
                            pw.SizedBox(height: 10),
                            pw.Row(children: [
                              pw.Table(
                                  columnWidths: {
                                    0: const pw.FixedColumnWidth(100),
                                    1: const pw.FixedColumnWidth(100),
                                  },
                                  border: pw.TableBorder.all(),
                                  children: [
                                    pw.TableRow(children: [
                                      pw.Padding(
                                          padding: const pw.EdgeInsets.all(2),
                                          child: pw.Text(
                                            'SD No.\n $accountNumber',
                                            style: pw.TextStyle(
                                              fontSize: 8,
                                              fontBold: pw.Font.courierBold(),
                                            ),
                                          )),
                                      pw.Padding(
                                          padding: const pw.EdgeInsets.all(2),
                                          child: pw.Text(
                                            'Date\n $date',
                                            style: pw.TextStyle(
                                              fontSize: 8,
                                              fontBold: pw.Font.courierBold(),
                                            ),
                                          ))
                                    ])
                                  ]),
                            ]),
                            pw.Row(children: [
                              pw.Table(
                                  columnWidths: {
                                    0: const pw.FixedColumnWidth(200),
                                  },
                                  border: pw.TableBorder.all(),
                                  children: [
                                    pw.TableRow(children: [
                                      pw.Padding(
                                          padding: const pw.EdgeInsets.all(2),
                                          child: pw.Text(
                                            'Name:$customerName',
                                            style: pw.TextStyle(
                                              fontSize: 8,
                                              fontBold: pw.Font.courierBold(),
                                            ),
                                          )),
                                    ])
                                  ]),
                            ]),
                            pw.SizedBox(height: 20),
                            pw.Text(
                              'Pay Rupees : ' +
                                  NumberToWord().convert('en-in', amount!),
                              style: pw.TextStyle(
                                fontSize: 10,
                                fontBold: pw.Font.courierBold(),
                              ),
                            ),
                            pw.SizedBox(height: 20),
                            pw.Row(
                                mainAxisAlignment: pw.MainAxisAlignment.end,
                                children: [
                                  pw.Text('Rs. '),
                                  pw.Table(
                                      columnWidths: {
                                        0: const pw.FixedColumnWidth(150),
                                      },
                                      border: pw.TableBorder.all(),
                                      children: [
                                        pw.TableRow(children: [
                                          pw.Padding(
                                              padding:
                                                  const pw.EdgeInsets.all(2),
                                              child: pw.Text(
                                                  amount.toString() + ' /-',
                                                  textAlign:
                                                      pw.TextAlign.center))
                                        ])
                                      ]),
                                ]),
                            pw.SizedBox(height: 25),
                            pw.Row(
                                mainAxisAlignment: pw.MainAxisAlignment.center,
                                children: [
                                  type == "Deposit"
                                      ? pw.Text(
                                          'Receiving Officer: $employeeName',
                                          style: const pw.TextStyle(
                                            fontSize: 10,
                                          ),
                                        )
                                      : pw.SizedBox(),
                                  type == "Withdraw"
                                      ? pw.Text(
                                          'Paying Officer: $employeeName',
                                          style: const pw.TextStyle(
                                            fontSize: 10,
                                          ),
                                        )
                                      : pw.SizedBox(),
                                  type == 'NewSd'
                                      ? pw.Text(
                                          'Receiving Officer: $employeeName',
                                          style: const pw.TextStyle(
                                            fontSize: 10,
                                          ),
                                        )
                                      : pw.SizedBox()
                                ]),
                            pw.SizedBox(height: 20),
                            pw.Row(
                                mainAxisAlignment: pw.MainAxisAlignment.start,
                                children: [
                                  type == "Deposit"
                                      ? pw.Text(
                                          'Not Valid unless countersigned by Receiving Officer',
                                          style: const pw.TextStyle(
                                            fontSize: 7,
                                          ),
                                        )
                                      : pw.SizedBox(),
                                  type == 'Withdraw'
                                      ? pw.Text(
                                          'Not Valid unless countersigned by Paying Officer',
                                          style: const pw.TextStyle(
                                            fontSize: 7,
                                          ),
                                        )
                                      : pw.SizedBox(),
                                  type == 'NewSd'
                                      ? pw.Text(
                                          'Not Valid unless countersigned by Receiving Officer',
                                          style: const pw.TextStyle(
                                            fontSize: 7,
                                          ),
                                        )
                                      : pw.SizedBox(),
                                ]),
                          ]),
                        ),
                      ),
                      pw.SizedBox(width: 15),
                      pw.Column(
                        children: List.generate(26, (index) {
                          return pw.Padding(
                            padding: const pw.EdgeInsets.all(5),
                            child: pw.Container(
                                height: 1, width: 1, color: PdfColors.grey),
                          );
                        }),
                      ),
                      pw.SizedBox(width: 20),
                      pw.SizedBox(
                        width: 550,
                        child: pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.center,
                            mainAxisAlignment: pw.MainAxisAlignment.center,
                            children: [
                              pw.Row(children: [
                                pw.Container(
                                  child: pw.Image(
                                      pw.MemoryImage(
                                        byteList,
                                      ),
                                      height: 40,
                                      fit: pw.BoxFit.contain),
                                ),
                                pw.SizedBox(width: 5),
                                pw.Expanded(
                                    child: pw.Column(
                                        mainAxisAlignment:
                                            pw.MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            pw.CrossAxisAlignment.center,
                                        children: [
                                      pw.Text(
                                        'MABEN NIDHI LIMITED',
                                        style: pw.TextStyle(
                                          fontSize: 20,
                                          fontBold: pw.Font.courierBold(),
                                        ),
                                      ),
                                      pw.Text(
                                        'Registered Office : $branchName',
                                        style: const pw.TextStyle(
                                          fontSize: 8,
                                        ),
                                      ),
                                      pw.SizedBox(height: 5),
                                      type == "Deposit"
                                          ? pw.Text(
                                              'SAVINGS DEPOSIT PAY - IN - SLIP',
                                              style: pw.TextStyle(
                                                fontSize: 15,
                                                fontBold:
                                                    pw.Font.helveticaBold(),
                                              ),
                                            )
                                          : pw.SizedBox(),
                                      type == "Withdraw"
                                          ? pw.Text(
                                              'SAVINGS DEPOSIT WITHDRAWAL SLIP',
                                              style: pw.TextStyle(
                                                fontSize: 15,
                                                fontBold:
                                                    pw.Font.helveticaBold(),
                                              ),
                                            )
                                          : pw.SizedBox(),
                                      type == "NewSd"
                                          ? pw.Text(
                                              'SAVINGS DEPOSIT NEW - SD - SLIP',
                                              style: pw.TextStyle(
                                                fontSize: 15,
                                                fontBold:
                                                    pw.Font.helveticaBold(),
                                              ),
                                            )
                                          : pw.SizedBox(),
                                      pw.SizedBox(height: 5),
                                    ]))
                              ]),
                              pw.Row(children: [
                                pw.Table(
                                    columnWidths: {
                                      0: const pw.FixedColumnWidth(180),
                                      1: const pw.FixedColumnWidth(180),
                                      2: const pw.FixedColumnWidth(130),
                                    },
                                    border: pw.TableBorder.all(),
                                    children: [
                                      pw.TableRow(children: [
                                        pw.Padding(
                                            padding: const pw.EdgeInsets.all(2),
                                            child: pw.Text(
                                              'SD No. $accountNumber',
                                              style: const pw.TextStyle(
                                                fontSize: 8,
                                              ),
                                            )),
                                        pw.Padding(
                                            padding: const pw.EdgeInsets.all(2),
                                            child: pw.Text(
                                              'Name: $customerName',
                                              style: const pw.TextStyle(
                                                fontSize: 8,
                                              ),
                                            )),
                                        pw.Padding(
                                            padding: const pw.EdgeInsets.all(2),
                                            child: pw.Text(
                                              'Date: $date',
                                              style: const pw.TextStyle(
                                                fontSize: 8,
                                              ),
                                            ))
                                      ])
                                    ]),
                              ]),
                              pw.SizedBox(height: 5),
                              pw.Row(children: [
                                pw.Text('Pay Rupees : ' +
                                    NumberToWord().convert('en-in', amount)),
                                pw.SizedBox(width: 5),
                                pw.Table(
                                    columnWidths: {
                                      0: const pw.FixedColumnWidth(150),
                                    },
                                    border: pw.TableBorder.all(),
                                    children: [
                                      pw.TableRow(children: [
                                        pw.Padding(
                                            padding: const pw.EdgeInsets.all(2),
                                            child: pw.Text(
                                                amount.toString() + ' /-',
                                                textAlign: pw.TextAlign.center))
                                      ])
                                    ]),
                              ]),
                              pw.SizedBox(height: 5),
                              pw.Row(children: [
                                pw.Table(
                                    columnWidths: {
                                      0: const pw.FixedColumnWidth(200),
                                      1: const pw.FixedColumnWidth(160),
                                      2: const pw.FixedColumnWidth(80),
                                      3: const pw.FixedColumnWidth(40),
                                    },
                                    border: pw.TableBorder.all(),
                                    children: [
                                      pw.TableRow(children: [
                                        pw.Column(children: [
                                          pw.Text('Cheque Details'),
                                          pw.SizedBox(height: 20),
                                          transactionType == 'Cheque'
                                              ? pw.Text(
                                                  'ChequeNo : $chequeNumber\nBranchBank : $branchBank\nIFSC : $ifscCode',
                                                  textAlign:
                                                      pw.TextAlign.center,
                                                  style: const pw.TextStyle(
                                                    fontSize: 10,
                                                  ),
                                                )
                                              : transactionType == 'RD'
                                                  ? pw.Text(
                                                      'RD : ' + searchRdNo.text,
                                                      textAlign:
                                                          pw.TextAlign.center,
                                                      style: const pw.TextStyle(
                                                        fontSize: 10,
                                                      ),
                                                    )
                                                  : transactionType ==
                                                          'Gold Loan'
                                                      ? pw.Text(
                                                          'Gold Loan No : ' +
                                                              goldloanno.text,
                                                          textAlign: pw
                                                              .TextAlign.center,
                                                          style: const pw
                                                              .TextStyle(
                                                            fontSize: 10,
                                                          ),
                                                        )
                                                      : transactionType ==
                                                              'Saving Deposit'
                                                          ? pw.Text(
                                                              'Saving Account No : ' +
                                                                  searchsdid
                                                                      .text,
                                                              textAlign: pw
                                                                  .TextAlign
                                                                  .center,
                                                              style: const pw
                                                                  .TextStyle(
                                                                fontSize: 10,
                                                              ),
                                                            )
                                                          : pw.SizedBox(),
                                        ]),
                                        pw.Column(children: [
                                          pw.Text('Denominations'),
                                          pw.SizedBox(height: 70)
                                        ]),
                                        pw.Column(children: [
                                          pw.Text('Rs. '),
                                          pw.SizedBox(height: 25),
                                          pw.Text(amount.toString() + ' /-')
                                        ]),
                                        pw.Column(children: [
                                          pw.Text('Ps.'),
                                          pw.SizedBox(height: 25),
                                        ]),
                                      ]),
                                      pw.TableRow(children: [
                                        pw.Column(children: []),
                                        pw.Column(children: [
                                          pw.Padding(
                                              padding:
                                                  const pw.EdgeInsets.all(2),
                                              child: pw.Align(
                                                  alignment:
                                                      pw.Alignment.centerRight,
                                                  child: pw.Text(
                                                    'Total',
                                                  )))
                                        ]),
                                        pw.Column(children: [
                                          pw.Padding(
                                              padding:
                                                  const pw.EdgeInsets.all(2),
                                              child: pw.Text(
                                                  amount.toString() + ' /-',
                                                  textAlign:
                                                      pw.TextAlign.center))
                                        ]),
                                        pw.Column(children: []),
                                      ])
                                    ]),
                              ]),
                              pw.SizedBox(height: 20),
                              pw.Row(
                                  mainAxisAlignment:
                                      pw.MainAxisAlignment.spaceEvenly,
                                  children: [
                                    pw.Text(
                                      'Signature of the depositer',
                                      style: const pw.TextStyle(
                                        fontSize: 8,
                                      ),
                                    ),
                                    pw.Text(
                                      'Signature Verified',
                                      style: const pw.TextStyle(
                                        fontSize: 8,
                                      ),
                                    ),
                                    type == "Deposit"
                                        ? pw.Text(
                                            'Receiving Officer: $employeeName',
                                            style: const pw.TextStyle(
                                              fontSize: 8,
                                            ),
                                          )
                                        : pw.SizedBox(),
                                    type == "Withdraw"
                                        ? pw.Text(
                                            'Paying Officer: $employeeName',
                                            style: const pw.TextStyle(
                                              fontSize: 8,
                                            ),
                                          )
                                        : pw.SizedBox(),
                                    type == "NewSd"
                                        ? pw.Text(
                                            'Receiving Officer: $employeeName',
                                            style: const pw.TextStyle(
                                              fontSize: 8,
                                            ),
                                          )
                                        : pw.SizedBox(),
                                  ]),
                              pw.SizedBox(height: 5),
                              // pw.Row(
                              //     mainAxisAlignment: pw.MainAxisAlignment.start,
                              //     children: [
                              //       pw.Text(
                              //         'Instructions to the members:This is only a withdrawal form which is not transferable and negotiable. It should always be accompanied by the pass book.',
                              //         style: const pw.TextStyle(
                              //           fontSize: 7,
                              //         ),
                              //       )
                              //     ]),
                              pw.SizedBox(height: 20),
                              pw.Row(
                                  mainAxisAlignment:
                                      pw.MainAxisAlignment.spaceAround,
                                  children: [
                                    pw.Text(
                                      'No.' + transId.toString(),
                                      style: const pw.TextStyle(
                                        fontSize: 7,
                                      ),
                                    ),
                                    pw.Table(
                                        columnWidths: {
                                          0: const pw.FixedColumnWidth(40),
                                          1: const pw.FixedColumnWidth(150),
                                        },
                                        border: pw.TableBorder.all(),
                                        children: [
                                          pw.TableRow(children: [
                                            pw.Padding(
                                                padding:
                                                    const pw.EdgeInsets.all(2),
                                                child: pw.Text(
                                                  'M.No.',
                                                  style: const pw.TextStyle(
                                                    fontSize: 7,
                                                  ),
                                                )),
                                            pw.Padding(
                                                padding:
                                                    const pw.EdgeInsets.all(2),
                                                child: pw.Text(''))
                                          ])
                                        ]),
                                    pw.Text(
                                      'Signature of the depositor',
                                      style: const pw.TextStyle(
                                        fontSize: 7,
                                      ),
                                    )
                                  ])
                            ]),
                      )
                    ]),
              ],
            );
          },
          pageFormat: const PdfPageFormat(
              28.3 * PdfPageFormat.cm, 11.1 * PdfPageFormat.cm,
              marginAll: 0.5 * PdfPageFormat.cm)),
    );

    // File('Recipt.pdf').writeAsBytes(await pdf.save());
    await Printing.sharePdf(bytes: await pdf.save(), filename: 'receipt.pdf');

    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String documentPath = documentDirectory.path;
    File receiptFile = File("$documentPath/receipt.pdf");
    receiptFile.writeAsBytesSync(List.from(await pdf.save()));
  }
}
