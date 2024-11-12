// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:final_df/app/app.dart';

class TranslationsFile extends Translations {
  /// List of locales used in the application
  static const listOfLocales = <Locale>[
    Locale('en'),
  ];

  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'appName': StringConstants.appName,
          'hi': 'Hi, ',
          'tableview': 'TABLE VIEW',
          'dremdining': 'Dream Dinning',
          'ceremony': 'CEREMONY',
          'shift': 'Shift',
          'joint': 'Joint',
          'loging': 'Login',
          'username': 'Username',
          'password': 'Password',
          'itemList': 'Item List',
          'additem': 'ADD ITEM',
          'srcode': 'SR CODE',
          'menuremark': 'MENU/REMARK',
          'qta': 'QTY',
          'rate': 'RATE',
          'amt': 'AMT',
          'billgenrate': "Bill Generate",
          'finalbillgenrate': 'Final bill generate',
          'selectcategory': 'Select Category',
          'searchhere': 'Search Here',
          'kitchanbillgenrate': 'Kitchen bill generate',
          'enterusername': 'Please Enter Right UserName',
          'enterstrongpassword': 'Please Enter Strong Password',
          'home': 'Home',
          'order': 'Order',
          'additems': 'Add item',
          'qtaandremark': 'ADD qty & Remark',
          'editqtaandremark': 'Edit qty & Remark',
          'remark': 'Remark',
          'hinttext': 'John Doe',
          'cancle': 'Cancle',
          'submit': 'Submit',
          'save': 'Save',
          'searchhear': 'Search Here',
          'usernamehinttext': 'User Name',
          'parcel': 'Parcel',
          'token_no': 'Token no.: ',
          'date': 'Date: ',
          'amount': 'AMOUNT: ',
          'paid_status': 'PAID STATUS: ',
          'allcategory': 'All Category',
          'filter_option': 'Filter Option',
          'cancel': 'Cancel',
          'apply': 'Apply',
          'qty': 'qty',
          'go_to_order_list': 'Go to order list',
          'confirm_logout': 'Confirm Logout',
          'logout_des': 'Are you sure you want to Logout?',
          'yes': 'Yes',
          'no': 'No',
          'table_no': 'Table no.: ',
          'kotbillgenrate': 'Kot generate',
          'download_kot': 'Download KOT',
          'networkPrinterList': 'Network Printer List',
          'selectThePrinterForPrintKOTS': '(Select the printer for print KOTS)',
          'printerNotConnectdPleaseTryAgain':
              'Printer not connectd. Please try again',
          'searchingForThePrintersInNetwork':
              'Searching for the Printers in your local Network',
        },
      };
}
