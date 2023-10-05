import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

final List<Map<String, dynamic>> fakeMenuResponse = [
  {
    "route": "/dashboard",
    "nameOption": "Home",
    "icon": "home",
  },
  {
    "route": "/dashboard/sales",
    "nameOption": "Sales",
    "icon": "sales",
    "children": [
      {
        "route": "/dashboard/sales/pos",
        "nameOption": "Point of Sale",
        "icon": "",
      },
      {
        "route": "/dashboard/sales/historySales",
        "nameOption": "History Sales",
        "icon": "",
        "children": [
          {
            "route": "/h1",
            "nameOption": "H1",
            "icon": "",
          },
          {
            "route": "h2",
            "nameOption": "H2",
            "icon": "",
            "children": [
              {
                "route": "/dashboard/h21",
                "nameOption": "H21",
                "icon": "",
              },
              {
                "route": "/dashboard/h22",
                "nameOption": "H22",
                "icon": "",
              },
            ]
          },
        ]
      },
    ]
  },
  {
    "route": "/dashboard/history",
    "nameOption": "History",
    "icon": "history",
  },
  {
    "route": "/dashboard/settings",
    "nameOption": "Settings",
    "icon": "settings",
  },
];

final Map<String, IconData> iconsMenu = {
  "home": Iconsax.home,
  "sales": Iconsax.shop_add,
  "user": Iconsax.user,
  "settings": Iconsax.setting,
  "history": Iconsax.language_circle,
  "": Iconsax.activity
};
