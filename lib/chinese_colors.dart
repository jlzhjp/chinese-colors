enum Season {
  spring,
  summer,
  fall,
  winter,
}

const chineseColors = {
  Season.spring: {
    '立春': [
      {
        '黄白游': 0xfffff799,
        '松花': 0xffffee6f,
        '缃叶': 0xffecd452,
        '苍黄': 0xffb6a014,
      },
      {
        '天缥': 0xffd5ebe1,
        '沧浪': 0xffb1d5c8,
        '苍筤': 0xff99bcac,
        '缥碧': 0xff80a492,
      },
      {
        '流黄': 0xff8b7042,
        '栗壳': 0xff775039,
        '龙战': 0xff5f4321,
        '青骊': 0xff422517,
      },
      {
        '海天霞': 0xfff3a694,
        '缙云': 0xffee7959,
        '纁黄': 0xffba5140,
        '珊瑚赫': 0xffc12c1f,
      },
    ],
    '雨水': {
      {
        '盈盈': 0xfff9d3e3,
        '水红': 0xffecb0c1,
        '苏梅 ': 0xffdd7694,
        '紫茎屏风': 0xffa76283,
      },
      {
        '葭灰': 0xffbeb1aa,
        '黄埃': 0xffb49273,
        '老僧衣': 0xffa4624,
        '玄天': 0xff6b5458,
      },
      {
        '黄河琉璃': 0xffe5a84b,
        '库金': 0xffe18a3b,
        '缊韨': 0xff984f31,
        '紫瓯': 0xff7c461e,
      },
      {
        '欧碧': 0xffc0d695,
        '春辰': 0xffa9be7b,
        '碧山': 0xff779649,
        '青青': 0xff4f6f46,
      },
    },
    '惊蛰': [
      {
        '赤缇': 0xffba5b49,
        '朱草': 0xffa64036,
        '綪茷': 0xff9e2a22,
        '顺圣': 0xff7c191e,
      },
      {
        '桃夭': 0xfff6bec8,
        '杨妃': 0xfff091a0,
        '长春': 0xffdc6b82,
        '牙绯': 0xffc35c5d,
      },
      {
        '黄栗留': 0xfffedc5e,
        '栀子': 0xfffac03d,
        '黄不老': 0xffdb9b34,
        '柘黄': 0xffc67915,
      },
      {
        '青鸾': 0xff9aa7b1,
        '菘蓝': 0xff6b798e,
        '青黛': 0xff45465e,
        '绀蝶': 0xff2c2f3b,
      },
    ],
    '春分': [
      {
        '皦玉': 0xffebeee8,
        '吉量': 0xffebeddf,
        '韶粉': 0xffe0e0d0,
        '霜地': 0xffc7c6b6,
      },
      {
        '夏籥': 0xffd2af9d,
        '紫磨金': 0xffbc836b,
        '檀色': 0xffb26d5d,
        '赭罗': 0xff9a6655,
      },
      {
        '黄丹': 0xffea5514,
        '洛神珠': 0xffd23918,
        '丹雘': 0xffc8161d,
        '水华朱': 0xffa72126,
      },
      {
        '青冥': 0xff3271ae,
        '青雘': 0xff007175,
        '青緺': 0xff284852,
        '骐驎': 0xff12264f,
      },
    ],
    '清明': [
      {
        '紫蒲': 0xffa6559d,
        '赪紫': 0xff8a1874,
        '齐紫': 0xff6c216d,
        '凝夜紫': 0xff422256,
      },
      {
        '冻缥': 0xffbec2b3,
        '春碧': 0xff9d9d82,
        '执大象': 0xff919177,
        '苔古': 0xff79836c,
      },
      {
        '香炉紫烟': 0xffd3ccd6,
        '紫菂': 0xff9b8ea9,
        '拂紫绵': 0xff7e527f,
        '三公子': 0xff663d74,
      },
      {
        '琅玕紫': 0xffcb5c83,
        '红踯躅': 0xffb83570,
        '魏红': 0xffa73766,
        '魏紫': 0xff903754,
      },
    ],
    '谷雨': [
      {
        '昌荣': 0xffdcc7e1,
        '紫薄汗': 0xffbba1cb,
        '茈藐': 0xffa67eb7,
        '紫紶': 0xff7d5284,
      },
      {
        '苍葭': 0xffa8bf8f,
        '庭芜绿': 0xff68945c,
        '翠微': 0xff4c8045,
        '翠虬': 0xff446a37,
      },
      {
        '碧落': 0xffaed0ee,
        '挼蓝': 0xff6e9bc5,
        '青雀头黛': 0xff354e6b,
        '螺子黛': 0xff13393e,
      },
      {
        '露褐': 0xffbd8253,
        '檀褐': 0xff945635,
        '緅絺': 0xff804c2e,
        '目童子': 0xff5b3222,
      },
    ]
  },
  Season.summer: {
    '立夏': [
      {
        '青粲': 0xffc3d94e,
        '翠缥': 0xffb7d332,
        '人籁': 0xff9ebc19,
        '水龙吟': 0xff84a729,
      },
      {
        '地籁': 0xffdfceb4,
        '大块': 0xffbfa782,
        '养生主': 0xffb49b7f,
        '大云': 0xff94784f,
      },
      {
        '溶溶月': 0xffbec2bc,
        '绍衣': 0xffa8a19c,
        '石莲褐': 0xff92897b,
        '黑朱': 0xff70695d,
      },
      {
        '朱颜酡': 0xfff29a76,
        '苕荣': 0xffed6d3d,
        '檎丹': 0xffe94829,
        '丹罽': 0xffe60012,
      },
    ],
    '小满': [
      {
        '彤管': 0xffe2a2ac,
        '渥赭': 0xffdd6b7b,
        '唇脂': 0xffc25160,
        '朱孔阳': 0xffb81a35,
      },
      {
        '石发': 0xff6a8d52,
        '漆姑': 0xff5d8351,
        '芰荷': 0xff4f794a,
        '官绿': 0xff2a6e3f,
      },
      {
        '嫩鹅黄': 0xfff2c867,
        '鞠衣': 0xffd3a237,
        '郁金裙': 0xffd08635,
        '黄流': 0xff9f6027,
      },
    ],
    '芒种': [
      {
        '筠雾': 0xffd5d1ae,
        '瓷秘': 0xffbfc096,
        '琬琰': 0xffa9a886,
        '青圭': 0xff92905d,
      },
      {
        '鸣珂': 0xffb3b59c,
        '青玉案': 0xffa8b092,
        '出岫': 0xffa9a773,
        '风入松': 0xff868c4e,
      },
      {
        '如梦令': 0xffddbb99,
        '芸黄': 0xffd2a36c,
        '金埒': 0xffbe9457,
        '雌黄': 0xffb4884d,
      },
      {
        '曾青': 0xff535164,
        '䒌靘': 0xff454659,
        '璆琳': 0xff343041,
        '瑾瑜': 0xff1e2732,
      },
    ],
    '夏至': [
      {
        '赩炽': 0xffcb523e,
        '石榴裙': 0xffb13b2e,
        '朱湛': 0xff95302e,
        '大繎': 0xff822327,
      },
      {
        '月魄': 0xffb2b6b6,
        '不皂': 0xffa7aaa1,
        '雷雨垂': 0xff7a7b78,
        '石涅': 0xff686a67,
      },
      {
        '扶光': 0xfff0c2a2,
        '椒房': 0xffdb9c5e,
        '红友': 0xffd9883d,
        '光明砂': 0xffcc5d20,
      },
      {
        '山矾': 0xfff5f3f2,
        '玉頩': 0xffeae5e3,
        '二目鱼': 0xffdfe0d9,
        '明月珰': 0xffd4d3ca,
      },
    ],
    '小暑': [
      {
        '骍刚': 0xfff5b087,
        '赪霞': 0xfff18f60,
        '赪尾': 0xffef845d,
        '朱柿': 0xffed6d46,
      },
      {
        '天球': 0xffe0dfc6,
        '行香子': 0xffbfb99c,
        '王刍': 0xffa99f70,
        '荩箧': 0xff877d52,
      },
      {
        '赤灵': 0xff954024,
        '丹秫': 0xff873424,
        '木兰': 0xff662b1f,
        '麒麟竭': 0xff4c1e1a,
      },
      {
        '柔蓝': 0xff106898,
        '碧城': 0xff12507b,
        '蓝采和': 0xff06436f,
        '帝释青': 0xff003460,
      },
    ],
    '大暑': [
      {
        '夕岚': 0xffe3adb9,
        '雌霓': 0xffcf929e,
        '绛纱': 0xffb27777,
        '茹藘': 0xffa35f65,
      },
      {
        '葱青': 0xffedf1bb,
        '少艾': 0xffe3eb98,
        '绮钱': 0xffd8de8a,
        '翠樽': 0xffcdd171,
      },
      {
        '石蜜': 0xffd4bf89,
        '沙饧': 0xffbfa670,
        '巨吕': 0xffaa8e59,
        '吉金': 0xff896d47,
      },
      {
        '山岚': 0xffbed2bb,
        '渌波': 0xff9bb496,
        '青楸': 0xff81a380,
        '菉竹': 0xff698e6a,
      },
    ],
  },
  Season.fall: {
    '立秋': [
      {
        '窃蓝': 0xff88abda,
        '监德': 0xff6f94cd,
        '苍苍': 0xff5976ba,
        '群青': 0xff2e59a7,
      },
      {
        '白青': 0xff98b6c2,
        '竹月': 0xff7f9faf,
        '空青': 0xff66889e,
        '太师青': 0xff547689,
      },
      {
        '缟羽': 0xffefefef,
        '香皮': 0xffd8d1c5,
        '云母': 0xffc6beb1,
        '佩玖': 0xffac9f8a,
      },
      {
        '麹尘': 0xffc0d09d,
        '绿沈': 0xff938f4c,
        '绞衣': 0xff7f754c,
        '素綦': 0xff595333,
      },
    ],
    '处暑': [
      {
        '退红': 0xfff0cfe3,
        '樱花': 0xffe4b8d5,
        '丁香': 0xffce93bf,
        '木槿': 0xffba79b1,
      },
      {
        '余白': 0xffc9cfc1,
        '兰苕': 0xffa8b78c,
        '碧滋': 0xff90a07d,
        '葱倩': 0xff6c8650,
      },
      {
        '云门': 0xffa2d2e2,
        '西子': 0xff87c0ca,
        '天水碧': 0xff5aa4ae,
        '法翠': 0xff108b96,
      },
      {
        '桑蕾': 0xffead89a,
        '太一余粮': 0xffd5b45c,
        '秋香': 0xffbf9c46,
        '老茯神': 0xffaa8534,
      },
    ],
    '白露': [
      {
        '凝脂': 0xfff5f2e9,
        '玉色': 0xffeae4d1,
        '黄润': 0xffdfd6b8,
        '缣缃': 0xffd5c8a0,
      },
      {
        '蕉月': 0xff86908a,
        '千山翠': 0xff6b7d73,
        '结绿': 0xff555f4d,
        '绿云': 0xff45493d,
      },
      {
        '藕丝秋半': 0xffd3cbc5,
        '苍烟落照': 0xffc8b5b3,
        '红藤杖': 0xff928187,
        '紫鼠': 0xff594c57,
      },
      {
        '黄粱': 0xffc4b798,
        '蒸栗': 0xffa58a5f,
        '射干': 0xff7c623f,
        '油葫芦': 0xff644d31,
      },
    ],
    '秋分': [
      {
        '卵色': 0xffd5e3d4,
        '葭菼': 0xffcad7c5,
        '冰台': 0xffbecab7,
        '青古': 0xffb3bda9,
      },
      {
        '栾华': 0xffc0ad5e,
        '大赤': 0xffaa9649,
        '佛赤': 0xff8f3d2c,
        '蜜褐': 0xff683632,
      },
      {
        '孔雀蓝': 0xff4994c4,
        '吐绶蓝': 0xff4182a4,
        '鱼师青': 0xff32788a,
        '软翠': 0xff006d87,
      },
      {
        '浅云': 0xffeaeef1,
        '素采': 0xffd4dde1,
        '影青': 0xffbdcbd2,
        '逍遥游': 0xffb2bfc3,
      },
    ],
    '寒露': [
      {
        '醽醁': 0xffa6bab1,
        '翠涛': 0xff819d8e,
        '青梅': 0xff778a77,
        '翕赩': 0xff5f766a,
      },
      {
        '九斤黄': 0xffddb078,
        '杏子': 0xffda9233,
        '媚蝶': 0xffbc6e37,
        '韎韐': 0xff9f5221,
      },
      {
        '东方既白': 0xff8ba3c7,
        '绀宇': 0xff003d74,
        '佛头青': 0xff19325f,
        '花青': 0xff1a2847,
      },
      {
        '弗肯红': 0xffecd9c7,
        '赤璋': 0xffe1c199,
        '茧色': 0xffc6a268,
        '密陀僧': 0xffb3934b,
      },
    ],
    '霜降': [
      {
        '银朱': 0xffd12920,
        '胭脂虫': 0xffab1d22,
        '朱樱': 0xff8f1d22,
        '爵头': 0xff631216,
      },
      {
        '甘石': 0xffbdb2b2,
        '迷楼灰': 0xff91828f,
        '鸦雏': 0xff6a5b6d,
        '烟墨': 0xff5c4f55,
      },
      {
        '十样锦': 0xfff8c6b5,
        '檀唇': 0xffda9e8c,
        '琼琚': 0xffd77f66,
        '棠梨': 0xffb15a43,
      },
      {
        '蜜合': 0xffdfd7c2,
        '假山南': 0xffd4c1a6,
        '紫花布': 0xffbea78b,
        '沉香': 0xff99806c,
      },
    ],
  },
  Season.winter: {
    '立冬': [
      {
        '半见': 0xfffffbc7,
        '女贞黄': 0xfff7eead,
        '绢纨': 0xffece093,
        '姜黄': 0xffd6c560,
      },
      {
        '繱犗': 0xff88bfb8,
        '二绿': 0xff5da39d,
        '铜青': 0xff3d8e86,
        '石绿': 0xff206864,
      },
      {
        '黄琮': 0xff9e8c6b,
        '茶色': 0xff887657,
        '伽罗': 0xff6d5c3d,
        '苍艾': 0xff5a4b3b,
      },
      {
        '藕丝褐': 0xffa88787,
        '葡萄褐': 0xff9e696d,
        '苏方': 0xff81474c,
        '福色': 0xff662b2f,
      },
    ],
    '小雪': [
      {
        '龙膏烛': 0xffde82a7,
        '黪紫': 0xffcc73a0,
        '胭脂水': 0xffb95a89,
        '胭脂紫': 0xffb0436f,
      },
      {
        '小红': 0xffe67762,
        '岱赭': 0xffdd6b4f,
        '鹤顶红': 0xffd24735,
        '朱殷': 0xffb93a26,
      },
      {
        '月白': 0xffd4e5ef,
        '星郎': 0xffbcd4e7,
        '晴山': 0xffa3bbdb,
        '品月': 0xff8aabcc,
      },
      {
        '明茶褐': 0xff9e8368,
        '荆褐': 0xff906c4a,
        '驼褐': 0xff7c5b3e,
        '椒褐': 0xff72453a,
      },
    ],
    '大雪': [
      {
        '粉米': 0xffefc4ce,
        '縓缘': 0xffce8892,
        '美人祭': 0xffc35c6a,
        '鞓红': 0xffb04552,
      },
      {
        '米汤娇': 0xffeeead9,
        '草白': 0xffbfc1a9,
        '玄校': 0xffa9a082,
        '綟绶': 0xff756c4b,
      },
      {
        '雀梅': 0xff788a6f,
        '油绿': 0xff5d7259,
        '莓莓': 0xff4e6548,
        '螺青': 0xff3f503b,
      },
      {
        '暮山紫': 0xffa4abd6,
        '紫苑': 0xff757cbb,
        '优昙瑞': 0xff615ea8,
        '延维': 0xff4a4b9d,
      },
    ],
    '冬至': [
      {
        '银红': 0xffe7cad3,
        '莲红': 0xffd9a0b3,
        '紫梅': 0xffbb7a8c,
        '紫矿': 0xff9e4e56,
      },
      {
        '咸池': 0xffdaa9a9,
        '红䵂': 0xffcd7372,
        '蚩尤旗': 0xffa85858,
        '霁红': 0xff7c4449,
      },
      {
        '莺儿': 0xffebe1a9,
        '禹余粮': 0xffe1d279,
        '姚黄': 0xffd6bc46,
        '蛾黄': 0xffbe8a2f,
      },
      {
        '濯绛': 0xff796860,
        '墨黪': 0xff585248,
        '驖骊': 0xff46433b,
        '京元': 0xff31322c,
      },
    ],
    '小寒': [
      {
        '酂白': 0xfff6f9e4,
        '断肠': 0xffecebc2,
        '田赤': 0xffe1d384,
        '黄封': 0xffcab272,
      },
      {
        '丁香褐': 0xffbd9683,
        '棠梨褐': 0xff955a42,
        '朱石栗': 0xff81492c,
        '枣褐': 0xff68361a,
      },
      {
        '秋蓝': 0xff7d929f,
        '育阳染': 0xff576470,
        '霁蓝': 0xff3c4654,
        '獭见': 0xff151d29,
      },
      {
        '井天': 0xffa4c9cc,
        '正青': 0xff6ca8af,
        '扁青': 0xff509296,
        '䌦色': 0xff226b68,
      },
    ],
    '大寒': [
      {
        '紫府': 0xff995d7f,
        '地血': 0xff814662,
        '芥拾紫': 0xff602641,
        '油紫': 0xff420b2f,
      },
      {
        '骨缥': 0xffebe3c7,
        '青白玉': 0xffcac5a0,
        '绿豆褐': 0xff92896b,
        '冥色': 0xff665f4d,
      },
      {
        '肉红': 0xffddc5b8,
        '珠子褐': 0xffbea89d,
        '鹰背褐': 0xff8f6d5f,
        '麝香褐': 0xff694b3c,
      },
      {
        '石英': 0xffc8b6bb,
        '银褐': 0xff9c8d9b,
        '烟红': 0xff9d858f,
        '紫诰': 0xff76555d,
      },
    ],
  }
};

extension SeasonExtension on Season {
  String get seasonName {
    switch (this) {
      case Season.spring:
        return '春';
      case Season.summer:
        return '夏';
      case Season.fall:
        return '秋';
      case Season.winter:
        return '冬';
    }
  }
}
