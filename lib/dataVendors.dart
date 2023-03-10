const recentActivities = [
  {
    "icon": 'assets/drop.svg',
    "label": 'Vendors Sallary',
    "amount": "\$120"
  },
  {
    "icon": 'assets/salary.svg',
    "label": 'Income Salary',
    "amount": "\$4500"
  },
  {
    "icon": 'assets/electricity.svg',
    "label": 'Dilivery Cost',
    "amount": "\$150"
  },
  {
    "icon": 'assets/wifi.svg',
    "label": 'Bonus & Extras',
    "amount": "\$60"
  },
];

const upcomingPayments = [
  {
    "icon": 'assets/home.svg',
    "label": 'Pharmacy',
    "amount": "\$1500"
  },
  {
    "icon": 'assets/salary.svg',
    "label": 'Diary',
    "amount": "\$150"
  },
];

List<Map<String, String>> Vendor = [
  {
    "avatar":'data:image/jpeg;base64,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',
    "label": '\nThsith',
    "amount": "LKR 200",
    "time": "10:42:23 AM",
    "status": "Completed",
  },
  {
    "avatar":'https://scontent.fcmb4-2.fna.fbcdn.net/v/t39.30808-6/296137097_1277237533020647_6809409032140061944_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=e3f864&_nc_ohc=N2nHtfHpb8oAX_zYn7M&_nc_ht=scontent.fcmb4-2.fna&oh=00_AT8K5ydPSF7WmPco4cunRIE6if9zM9mNmm4BOZbvJPF85g&oe=630D693C',
    "label": '\nPrabash',
    "amount": "LKR 5000",
    "time": "10:42:23 AM",
    "status": "Completed",
  },
  {
    "avatar":'https://scontent.fcmb4-2.fna.fbcdn.net/v/t1.6435-1/71756572_729688300791750_197393338259734528_n.jpg?stp=dst-jpg_s320x320&_nc_cat=103&ccb=1-7&_nc_sid=7206a8&_nc_ohc=urzXUPiUtBkAX_DC1uH&_nc_ht=scontent.fcmb4-2.fna&oh=00_AT9aO09BDeby-FTDO-rNKOEvWnlzmV_lwWMj0wpBAOUX_w&oe=632C22C0',
    "label": '\nRuwan',
    "amount": "LKR 2500",
    "time": "10:42:23 AM",
    "status": "Completed",
  },
  {
    "avatar":'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80',
   "label": '\nSenuri',
    "amount": "LKR 700",
    "time": "12:42:00 PM",
    "status": "Completed",
  },
  {
    "avatar":'https://scontent.fcmb4-2.fna.fbcdn.net/v/t39.30808-6/260296752_2081944858627287_2007769419447213887_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=e3f864&_nc_ohc=GoOWWLntAQcAX8qtPCe&_nc_ht=scontent.fcmb4-2.fna&oh=00_AT_j50_FVxm5b90w-zUtCGgFzMCwpe_nT647Vo5EtfWe0g&oe=630C4F79',
    "label": '\nKezara',
    "amount": "LKR 60000",
    "time": "10:42:23 PM",
    "status": "Completed",
  },

  {
    "avatar":'https://scontent.fcmb4-2.fna.fbcdn.net/v/t39.30808-1/269308411_2099653016856471_3712295933458191239_n.jpg?stp=c0.0.240.240a_dst-jpg_p240x240&_nc_cat=108&ccb=1-7&_nc_sid=7206a8&_nc_ohc=YtIop__db3sAX9iWTyT&tn=-PZHjTpIHw4H404H&_nc_ht=scontent.fcmb4-2.fna&oh=00_AT_4TJmzbnUACSpRkLB13paqJjGx5WQY27kbcNp0Pi9mKQ&oe=630C0E72',
    "label":'\nLakshan',
    "amount": "LKR 60000",
    "time": "10:42:23 PM",
    "status": "Completed",
  },

  {
    "avatar":'https://scontent.fcmb4-2.fna.fbcdn.net/v/t39.30808-1/271134524_2437868296348597_3647926428209261418_n.jpg?stp=dst-jpg_p320x320&_nc_cat=111&ccb=1-7&_nc_sid=7206a8&_nc_ohc=SZsXr7wbzp4AX-g3xnW&_nc_ht=scontent.fcmb4-2.fna&oh=00_AT8Ve7_6bd1fGICl5Ptf3NtRwAlPJeiSU0pmRpDVnjceRw&oe=630C78AF',
   "label":'Mishan',
    "amount": "LKR 500",
    "time": "10:42:23 PM",
    "status": "Completed",
  },
  {
    "avatar":'https://scontent.fcmb4-2.fna.fbcdn.net/v/t39.30808-6/272812333_3099015993671822_9081903753933088343_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=e3f864&_nc_ohc=42n7Seke5N0AX9l3jPA&_nc_ht=scontent.fcmb4-2.fna&oh=00_AT89SzRCoCxSTjhlzVRk3QDN_a-oQyEMFaWuz_9TCIvbEg&oe=630D7E34',
    "label":'Mithun',
    "amount": "LKR 500",
    "time": "10:42:23 PM",
    "status": "Completed",
  }

];