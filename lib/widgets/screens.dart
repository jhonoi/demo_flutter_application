import 'package:flutter/material.dart';
import 'dashboard/dashboardAppBar.dart';
import 'dashboard/dashboardBal.dart';
import 'dashboard/quickChargeButton.dart';
import 'listHeader.dart';
import 'listOption.dart';
import 'profile/alertBar.dart';
import 'profile/profileAppBar.dart';

List<Widget> screens = [
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      DashboardAppBar(),
      DashboardBalance(),
      Container(
        color: Color(0xFF201E94),
        width: double.infinity,
        height: 1.0,
      ),
      Expanded(
        child: Container(
          width: double.infinity,
          color: Colors.grey[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(15.0),
                child: Text(
                  'QUICK CHARGE',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 10.0),
                child: Row(
                  children: [
                    QuickChargeButton(value: '100'),
                    QuickChargeButton(value: '200'),
                    Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.grey[200],
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add_rounded,
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  ),
  Center(child: Text('Dummy Screen')),
  Center(child: Text('Dummy Screen')),
  Center(child: Text('Dummy Screen')),
  ListView(
    children: [
      ProfileAppBar(),
      AlertBar(),
      ListHeader(text: 'ACCOUNT'),
      ListOption(text: 'Personal', icon: Icons.person_outline_rounded),
      ListOption(text: 'Identity Verification', icon: Icons.gpp_maybe_outlined),
      ListHeader(text: 'BUSINESS'),
      ListOption(text: 'Details', icon: Icons.shopping_bag_outlined),
      ListOption(text: 'Balance', icon: Icons.payments_outlined),
      ListOption(text: 'Connect', icon: Icons.receipt_long_outlined),
      ListOption(text: 'Payouts', icon: Icons.payment_outlined),
      ListOption(text: 'Taxes', icon: Icons.flag_outlined),
      ListOption(text: 'Team', icon: Icons.groups_outlined),
      ListHeader(text: 'REFERRAL'),
      ListOption(text: 'Send USD 50 and earn USD 50', icon: Icons.drafts_outlined),
      ListHeader(text: 'SUPPORT'),
      ListOption(text: 'Help', icon: Icons.help_outline_rounded),
      ListHeader(text: 'NOMOD'),
      ListOption(text: 'About', icon: Icons.info_outline_rounded),
      ListOption(text: 'Terms of Service', icon: Icons.gavel_rounded),
      ListOption(text: 'Privacy', icon: Icons.visibility_off_outlined),
      ListOption(text: 'Sign Out', icon: Icons.ac_unit)
    ],
  ),
];
