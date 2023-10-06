import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

final List<Map<String, dynamic>> fakeMenuResponse = [
  {
    "route": "/dashboard",
    "nameOption": "Home",
    "icon": "home",
  },
  {
    "route": "/dashboard/security",
    "nameOption": "Security",
    "icon": "security",
    "children": [
      {
        "route": "/dashboard/security/users",
        "nameOption": "Users",
        "icon": "",
      },
      {
        "route": "/dashboard/security/profiles",
        "nameOption": "Profiles",
        "icon": "",
      },
      {
        "route": "/dashboard/security/parameters",
        "nameOption": "Parameters",
        "icon": "",
      },
    ]
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
  "security": Iconsax.security,
  "sales": Iconsax.shop_add,
  "user": Iconsax.user,
  "settings": Iconsax.setting,
  "history": Iconsax.language_circle,
  "profiles": Iconsax.profile,
  "parameters": Iconsax.code,
  "": Iconsax.activity
};
