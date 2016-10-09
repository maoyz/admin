DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `city_id` int(11) NOT NULL COMMENT '城市id',
  `city_name` varchar(50) NOT NULL COMMENT '城市名称',
  `province_id` int(11) NOT NULL COMMENT '省份id',
  `pinyin` varchar(50) NOT NULL COMMENT '拼音',
  `first_character` varchar(1) NOT NULL COMMENT '首字母大写',
  `is_municipalities` tinyint(4) NOT NULL COMMENT '是否省会城市',
  `city_level` tinyint(1) NOT NULL COMMENT '城市级别',
  PRIMARY KEY (`city_id`),
  KEY `idx_city_province_id` (`province_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `city`
-- ----------------------------
BEGIN;
INSERT INTO `city` VALUES ('110100', '北京', '110000', 'beijing', 'B', '1', '1'), ('120100', '天津', '120000', 'tianjin', 'T', '1', '2'), ('130100', '石家庄', '130000', 'shijiazhuang', 'S', '0', '2'), ('130200', '唐山', '130000', 'tangshan', 'T', '0', '2'), ('130300', '秦皇岛', '130000', 'qinhuangdao', 'Q', '0', '3'), ('130400', '邯郸', '130000', 'handan', 'H', '0', '3'), ('130500', '邢台', '130000', 'xingtai', 'X', '0', '3'), ('130600', '保定', '130000', 'baoding', 'B', '0', '3'), ('130700', '张家口', '130000', 'zhangjiakou', 'Z', '0', '3'), ('130800', '承德', '130000', 'chengde', 'C', '0', '3'), ('130900', '沧州', '130000', 'cangzhou', 'C', '0', '3'), ('131000', '廊坊', '130000', 'langfang', 'L', '0', '3'), ('131100', '衡水', '130000', 'hengshui', 'H', '0', '3'), ('140100', '太原', '140000', 'taiyuan', 'T', '0', '2'), ('140200', '大同', '140000', 'datong', 'D', '0', '3'), ('140300', '阳泉', '140000', 'yangquan', 'Y', '0', '3'), ('140400', '长治', '140000', 'zhangzhi', 'C', '0', '3'), ('140500', '晋城', '140000', 'jincheng', 'J', '0', '3'), ('140600', '朔州', '140000', 'shuozhou', 'S', '0', '3'), ('140700', '晋中', '140000', 'jinzhong', 'J', '0', '3'), ('140800', '运城', '140000', 'yuncheng', 'Y', '0', '3'), ('140900', '忻州', '140000', 'xinzhou', 'X', '0', '3'), ('141000', '临汾', '140000', 'linfen', 'L', '0', '3'), ('141100', '吕梁', '140000', 'lvliang', 'L', '0', '3'), ('150100', '呼和浩特', '150000', 'huhehaote', 'H', '0', '3'), ('150200', '包头', '150000', 'baotou', 'B', '0', '3'), ('150300', '乌海', '150000', 'wuhai', 'W', '0', '3'), ('150400', '赤峰', '150000', 'chifeng', 'C', '0', '3'), ('150500', '通辽', '150000', 'tongliao', 'T', '0', '3'), ('150600', '鄂尔多斯', '150000', 'eerduosi', 'E', '0', '3'), ('150700', '呼伦贝尔', '150000', 'hulunbeier', 'H', '0', '3'), ('150800', '巴彦淖尔', '150000', 'bayannaoer', 'B', '0', '3'), ('150900', '乌兰察布', '150000', 'wulanchabu', 'W', '0', '3'), ('152200', '兴安盟', '150000', 'xinganmeng', 'X', '0', '3'), ('152500', '锡林郭勒盟', '150000', 'xilinguolemeng', 'X', '0', '0'), ('152900', '阿拉善盟', '150000', 'alashanmeng', 'A', '0', '0'), ('210100', '沈阳', '210000', 'shenyang', 'S', '0', '2'), ('210200', '大连', '210000', 'dalian', 'D', '0', '3'), ('210300', '鞍山', '210000', 'anshan', 'A', '0', '3'), ('210400', '抚顺', '210000', 'fushun', 'F', '0', '3'), ('210500', '本溪', '210000', 'benxi', 'B', '0', '3'), ('210600', '丹东', '210000', 'dandong', 'D', '0', '3'), ('210700', '锦州', '210000', 'jinzhou', 'J', '0', '3'), ('210800', '营口', '210000', 'yingkou', 'Y', '0', '3'), ('210900', '阜新', '210000', 'fuxin', 'F', '0', '3'), ('211000', '辽阳', '210000', 'liaoyang', 'L', '0', '3'), ('211100', '盘锦', '210000', 'panjin', 'P', '0', '3'), ('211200', '铁岭', '210000', 'tieling', 'T', '0', '3'), ('211300', '朝阳', '210000', 'chaoyang', 'C', '0', '3'), ('211400', '葫芦岛', '210000', 'huludao', 'H', '0', '3'), ('211500', '北宁', '210000', 'beining', 'B', '0', '3'), ('220100', '长春', '220000', 'changchun', 'C', '0', '2'), ('220200', '吉林', '220000', 'jilinshi', 'J', '0', '0'), ('220300', '四平', '220000', 'siping', 'S', '0', '3'), ('220400', '辽源', '220000', 'liaoyuan', 'L', '0', '3'), ('220500', '通化', '220000', 'tonghua', 'T', '0', '3'), ('220600', '白山', '220000', 'baishan', 'B', '0', '3'), ('220700', '松原', '220000', 'songyuan', 'S', '0', '3'), ('220800', '白城', '220000', 'baicheng', 'B', '0', '3'), ('222400', '延边', '220000', 'yanbian', 'Y', '0', '0'), ('230100', '哈尔滨', '230000', 'haerbin', 'H', '0', '2'), ('230200', '齐齐哈尔', '230000', 'qiqihaer', 'Q', '0', '3'), ('230300', '鸡西', '230000', 'jixi', 'J', '0', '3'), ('230400', '鹤岗', '230000', 'hegang', 'H', '0', '3'), ('230500', '双鸭山', '230000', 'shuangyashan', 'S', '0', '3'), ('230600', '大庆', '230000', 'daqing', 'D', '0', '3'), ('230700', '伊春', '230000', 'yichun', 'Y', '0', '3'), ('230800', '佳木斯', '230000', 'jiamusi', 'J', '0', '3'), ('230900', '七台河', '230000', 'qitaihe', 'Q', '0', '3'), ('231000', '牡丹江', '230000', 'mudanjiang', 'M', '0', '3'), ('231100', '黑河', '230000', 'heihe', 'H', '0', '3'), ('231200', '绥化', '230000', 'suihua', 'S', '0', '3'), ('232700', '大兴安岭', '230000', 'daxinganling', 'D', '0', '0'), ('310100', '上海', '310000', 'shanghai', 'S', '1', '1'), ('320100', '南京', '320000', 'nanjing', 'N', '0', '2'), ('320200', '无锡', '320000', 'wuxi', 'W', '0', '2'), ('320300', '徐州', '320000', 'xuzhou', 'X', '0', '3'), ('320400', '常州', '320000', 'changzhou', 'C', '0', '3'), ('320500', '苏州', '320000', 'suzhou', 'S', '0', '2'), ('320600', '南通', '320000', 'nantong', 'N', '0', '3'), ('320700', '连云港', '320000', 'lianyungang', 'L', '0', '3'), ('320800', '淮安', '320000', 'huaian', 'H', '0', '3'), ('320900', '盐城', '320000', 'yancheng', 'Y', '0', '3'), ('321000', '扬州', '320000', 'yangzhou', 'Y', '0', '3'), ('321100', '镇江', '320000', 'zhenjiang', 'Z', '0', '3'), ('321200', '泰州', '320000', 'tai_zhou', 'T', '0', '3'), ('321300', '宿迁', '320000', 'suqian', 'S', '0', '3'), ('330100', '杭州', '330000', 'hangzhou', 'H', '0', '2'), ('330200', '宁波', '330000', 'ningbo', 'N', '0', '2'), ('330300', '温州', '330000', 'wenzhou', 'W', '0', '2'), ('330400', '嘉兴', '330000', 'jiaxing', 'J', '0', '3'), ('330500', '湖州', '330000', 'huzhou', 'H', '0', '3'), ('330600', '绍兴', '330000', 'shaoxing', 'S', '0', '3'), ('330700', '金华', '330000', 'jinhua', 'J', '0', '3'), ('330800', '衢州', '330000', 'quzhou', 'Q', '0', '3'), ('330900', '舟山', '330000', 'zhoushan', 'Z', '0', '3'), ('331000', '台州', '330000', 'taizhou', 'T', '0', '3'), ('331100', '丽水', '330000', 'lishui', 'L', '0', '3'), ('340100', '合肥', '340000', 'hefei', 'H', '0', '2'), ('340200', '芜湖', '340000', 'wuhu', 'W', '0', '3'), ('340300', '蚌埠', '340000', 'bangbu', 'B', '0', '3'), ('340400', '淮南', '340000', 'huainan', 'H', '0', '3'), ('340500', '马鞍山', '340000', 'maanshan', 'M', '0', '3'), ('340600', '淮北', '340000', 'huaibei', 'H', '0', '3'), ('340700', '铜陵', '340000', 'tongling', 'T', '0', '3'), ('340800', '安庆', '340000', 'anqing', 'A', '0', '3'), ('341000', '黄山', '340000', 'huangshan', 'H', '0', '3'), ('341100', '滁州', '340000', 'chuzhou', 'C', '0', '3'), ('341200', '阜阳', '340000', 'fu_yang', 'F', '0', '3'), ('341300', '宿州', '340000', 'su_zhou', 'S', '0', '3'), ('341400', '巢湖', '340000', 'chaohu', 'C', '0', '3'), ('341500', '六安', '340000', 'liuan', 'L', '0', '3'), ('341600', '亳州', '340000', 'bozhou', 'B', '0', '3'), ('341700', '池州', '340000', 'chizhou', 'C', '0', '3'), ('341800', '宣城', '340000', 'xuancheng', 'X', '0', '3'), ('350100', '福州', '350000', 'fuzhou', 'F', '0', '2'), ('350200', '厦门', '350000', 'xiamen', 'X', '0', '3'), ('350300', '莆田', '350000', 'putian', 'P', '0', '3'), ('350400', '三明', '350000', 'sanming', 'S', '0', '3'), ('350500', '泉州', '350000', 'quanzhou', 'Q', '0', '3'), ('350600', '漳州', '350000', 'zhangzhou', 'Z', '0', '3'), ('350700', '南平', '350000', 'nanping', 'N', '0', '3'), ('350800', '龙岩', '350000', 'longyan', 'L', '0', '3'), ('350900', '宁德', '350000', 'ningde', 'N', '0', '3'), ('360100', '南昌', '360000', 'nanchang', 'N', '0', '2'), ('360200', '景德镇', '360000', 'jingdezhen', 'J', '0', '3'), ('360300', '萍乡', '360000', 'ping_xiang', 'P', '0', '3'), ('360400', '九江', '360000', 'jiujiang', 'J', '0', '3'), ('360500', '新余', '360000', 'xinyu', 'X', '0', '3'), ('360600', '鹰潭', '360000', 'yingtan', 'Y', '0', '3'), ('360700', '赣州', '360000', 'ganzhou', 'G', '0', '3'), ('360800', '吉安', '360000', 'jian', 'J', '0', '3'), ('360900', '宜春', '360000', 'yi_chun', 'Y', '0', '3'), ('361000', '抚州', '360000', 'fu_zhou', 'F', '0', '3'), ('361100', '上饶', '360000', 'shangrao', 'S', '0', '3'), ('370100', '济南', '370000', 'jinan', 'J', '0', '2'), ('370200', '青岛', '370000', 'qingdao', 'Q', '0', '2'), ('370300', '淄博', '370000', 'zibo', 'Z', '0', '3'), ('370400', '枣庄', '370000', 'zaozhuang', 'Z', '0', '3'), ('370500', '东营', '370000', 'dongying', 'D', '0', '3'), ('370600', '烟台', '370000', 'yantai', 'Y', '0', '3'), ('370700', '潍坊', '370000', 'weifang', 'W', '0', '3'), ('370800', '济宁', '370000', 'jining', 'J', '0', '3'), ('370900', '泰安', '370000', 'taian', 'T', '0', '3'), ('371000', '威海', '370000', 'weihai', 'W', '0', '3'), ('371100', '日照', '370000', 'rizhao', 'R', '0', '3'), ('371200', '莱芜', '370000', 'laiwu', 'L', '0', '3'), ('371300', '临沂', '370000', 'linyi', 'L', '0', '3'), ('371400', '德州', '370000', 'dezhou', 'D', '0', '3'), ('371500', '聊城', '370000', 'liaocheng', 'L', '0', '3'), ('371600', '滨州', '370000', 'binzhou', 'B', '0', '3'), ('371700', '菏泽', '370000', 'heze', 'H', '0', '3'), ('410100', '郑州', '410000', 'zhengzhou', 'Z', '0', '2'), ('410200', '开封', '410000', 'kaifeng', 'K', '0', '3'), ('410300', '洛阳', '410000', 'luoyang', 'L', '0', '3'), ('410400', '平顶山', '410000', 'pingdingshan', 'P', '0', '3'), ('410500', '安阳', '410000', 'anyang', 'A', '0', '3'), ('410600', '鹤壁', '410000', 'hebi', 'H', '0', '3'), ('410700', '新乡', '410000', 'xinxiang', 'X', '0', '3'), ('410800', '焦作', '410000', 'jiaozuo', 'J', '0', '3'), ('410900', '濮阳', '410000', 'puyang', 'P', '0', '3'), ('411000', '许昌', '410000', 'xuchang', 'X', '0', '3'), ('411100', '漯河', '410000', 'luohe', 'L', '0', '3'), ('411200', '三门峡', '410000', 'sanmenxia', 'S', '0', '3'), ('411300', '南阳', '410000', 'nanyang', 'N', '0', '3'), ('411400', '商丘', '410000', 'shangqiu', 'S', '0', '3'), ('411500', '信阳', '410000', 'xinyang', 'X', '0', '3'), ('411600', '周口', '410000', 'zhoukou', 'Z', '0', '3'), ('411700', '驻马店', '410000', 'zhumadian', 'Z', '0', '3'), ('419000', '济源市', '410000', 'jiyuanshi', 'J', '0', '0'), ('420100', '武汉', '420000', 'wuhan', 'W', '0', '2'), ('420200', '黄石', '420000', 'huangshi', 'H', '0', '3'), ('420300', '十堰', '420000', 'shiyan', 'S', '0', '3'), ('420500', '宜昌', '420000', 'yichang', 'Y', '0', '3'), ('420600', '襄阳', '420000', 'xiangfan', 'X', '0', '3'), ('420700', '鄂州', '420000', 'ezhou', 'E', '0', '3'), ('420800', '荆门', '420000', 'jingmen', 'J', '0', '3'), ('420900', '孝感', '420000', 'xiaogan', 'X', '0', '3'), ('421000', '荆州', '420000', 'jingzhou', 'J', '0', '3'), ('421100', '黄冈', '420000', 'huanggang', 'H', '0', '3'), ('421200', '咸宁', '420000', 'xianning', 'X', '0', '3'), ('421300', '随州', '420000', 'suizhou', 'S', '0', '3'), ('422800', '恩施', '420000', 'enshi', 'E', '0', '3'), ('423100', '仙桃', '420000', 'xiantao', 'X', '0', '3'), ('423200', '潜江', '420000', 'qianjiang', 'Q', '0', '3'), ('423300', '天门', '420000', 'tianmen', 'T', '0', '3'), ('423400', '神农架', '420000', 'shennongjia', 'S', '0', '0'), ('430100', '长沙', '430000', 'changsha', 'C', '0', '2'), ('430200', '株洲', '430000', 'zhuzhou', 'Z', '0', '3'), ('430300', '湘潭', '430000', 'xiangtan', 'X', '0', '3'), ('430400', '衡阳', '430000', 'hengyang', 'H', '0', '3'), ('430500', '邵阳', '430000', 'shaoyang', 'S', '0', '3'), ('430600', '岳阳', '430000', 'yueyang', 'Y', '0', '3'), ('430700', '常德', '430000', 'changde', 'C', '0', '3'), ('430800', '张家界', '430000', 'zhangjiajie', 'Z', '0', '3'), ('430900', '益阳', '430000', 'yiyang', 'Y', '0', '3'), ('431000', '郴州', '430000', 'chenzhou', 'C', '0', '3'), ('431100', '永州', '430000', 'yongzhou', 'Y', '0', '3'), ('431200', '怀化', '430000', 'huaihua', 'H', '0', '3'), ('431300', '娄底', '430000', 'loudi', 'L', '0', '3'), ('433100', '湘西', '430000', 'xiangxi', 'X', '0', '0'), ('440100', '广州', '440000', 'guangzhou', 'G', '0', '1'), ('440200', '韶关', '440000', 'shaoguan', 'S', '0', '3'), ('440300', '深圳', '440000', 'shenzhen', 'S', '0', '1'), ('440400', '珠海', '440000', 'zhuhai', 'Z', '0', '3'), ('440500', '汕头', '440000', 'shantou', 'S', '0', '3'), ('440600', '佛山', '440000', 'foshan', 'F', '0', '3'), ('440700', '江门', '440000', 'jiangmen', 'J', '0', '3'), ('440800', '湛江', '440000', 'zhanjiang', 'Z', '0', '3'), ('440900', '茂名', '440000', 'maoming', 'M', '0', '3'), ('441200', '肇庆', '440000', 'zhaoqing', 'Z', '0', '3'), ('441300', '惠州', '440000', 'huizhou', 'H', '0', '3'), ('441400', '梅州', '440000', 'meizhou', 'M', '0', '3'), ('441500', '汕尾', '440000', 'shanwei', 'S', '0', '3'), ('441600', '河源', '440000', 'heyuan', 'H', '0', '3'), ('441700', '阳江', '440000', 'yangjiang', 'Y', '0', '3'), ('441800', '清远', '440000', 'qingyuan', 'Q', '0', '3'), ('441900', '东莞', '440000', 'dongguan', 'D', '0', '3'), ('442000', '中山', '440000', 'zhongshan', 'Z', '0', '3'), ('445100', '潮州', '440000', 'chaozhou', 'C', '0', '3'), ('445200', '揭阳', '440000', 'jieyang', 'J', '0', '3'), ('445300', '云浮', '440000', 'yunfu', 'Y', '0', '3'), ('450100', '南宁', '450000', 'nanning', 'N', '0', '2'), ('450200', '柳州', '450000', 'liuzhou', 'L', '0', '3'), ('450300', '桂林', '450000', 'guilin', 'G', '0', '3'), ('450400', '梧州', '450000', 'wuzhou', 'W', '0', '3'), ('450500', '北海', '450000', 'beihai', 'B', '0', '3'), ('450600', '防城港', '450000', 'fangchenggang', 'F', '0', '3'), ('450700', '钦州', '450000', 'qinzhou', 'Q', '0', '3'), ('450800', '贵港', '450000', 'guigang', 'G', '0', '3'), ('450900', '玉林', '450000', 'yu_lin', 'Y', '0', '3'), ('451000', '百色', '450000', 'baise', 'B', '0', '3'), ('451100', '贺州', '450000', 'hezhou', 'H', '0', '3'), ('451200', '河池', '450000', 'hechi', 'H', '0', '3'), ('451300', '来宾', '450000', 'laibin', 'L', '0', '3'), ('451400', '崇左', '450000', 'chongzuo', 'C', '0', '3'), ('460100', '海口', '460000', 'haikou', 'H', '0', '3'), ('460200', '三亚', '460000', 'sanya', 'S', '0', '3'), ('461100', '五指山', '460000', 'wuzhishan', 'W', '0', '0'), ('461200', '琼海', '460000', 'qionghai', 'Q', '0', '0'), ('461300', '儋州', '460000', 'danzhou', 'D', '0', '0'), ('461400', '文昌', '460000', 'wenchang', 'W', '0', '0'), ('461500', '万宁', '460000', 'wanning', 'W', '0', '0'), ('461600', '东方', '460000', 'dongfang', 'D', '0', '0'), ('461700', '定安', '460000', 'dingan', 'D', '0', '0'), ('461800', '屯昌', '460000', 'tunchang', 'T', '0', '0'), ('461900', '澄迈', '460000', 'chengmai', 'C', '0', '0'), ('462000', '临高', '460000', 'lingao', 'L', '0', '0'), ('462100', '白沙', '460000', 'baisha', 'B', '0', '0'), ('462200', '昌江', '460000', 'changjiang', 'C', '0', '0'), ('462300', '乐东', '460000', 'ledong', 'L', '0', '0'), ('462400', '陵水', '460000', 'lingshui', 'L', '0', '0'), ('462500', '保亭', '460000', 'baoting', 'B', '0', '0'), ('462600', '琼中', '460000', 'qiongzhong', 'Q', '0', '0'), ('462700', '西沙群岛', '460000', 'xishaqundao', 'X', '0', '0'), ('462800', '南沙群岛', '460000', 'nanshaqundao', 'N', '0', '0'), ('462900', '中沙群岛的岛礁及其海域', '460000', 'zhongshaqundaodedaojiaojiqihaiyu', 'Z', '0', '0'), ('500100', '重庆', '500000', 'chongqing', 'C', '1', '2'), ('510100', '成都', '510000', 'chengdu', 'C', '0', '2'), ('510300', '自贡', '510000', 'zigong', 'Z', '0', '3'), ('510400', '攀枝花', '510000', 'panzhihua', 'P', '0', '3'), ('510500', '泸州', '510000', 'luzhou', 'L', '0', '3'), ('510600', '德阳', '510000', 'deyang', 'D', '0', '3'), ('510700', '绵阳', '510000', 'mianyang', 'M', '0', '3'), ('510800', '广元', '510000', 'guangyuan', 'G', '0', '3'), ('510900', '遂宁', '510000', 'suining', 'S', '0', '3'), ('511000', '内江', '510000', 'neijiang', 'N', '0', '3'), ('511100', '乐山', '510000', 'leshan', 'L', '0', '3'), ('511300', '南充', '510000', 'nanchong', 'N', '0', '3'), ('511400', '眉山', '510000', 'meishan', 'M', '0', '3'), ('511500', '宜宾', '510000', 'yibin', 'Y', '0', '3'), ('511600', '广安', '510000', 'guangan', 'G', '0', '3'), ('511700', '达州', '510000', 'dazhou', 'D', '0', '3'), ('511800', '雅安', '510000', 'yaan', 'Y', '0', '3'), ('511900', '巴中', '510000', 'bazhong', 'B', '0', '3'), ('512000', '资阳', '510000', 'ziyang', 'Z', '0', '3'), ('513200', '阿坝', '510000', 'aba', 'A', '0', '0'), ('513300', '甘孜', '510000', 'ganzi', 'G', '0', '0'), ('513400', '凉山', '510000', 'liangshan', 'L', '0', '0'), ('520100', '贵阳', '520000', 'guiyang', 'G', '0', '3'), ('520200', '六盘水', '520000', 'liupanshui', 'L', '0', '3'), ('520300', '遵义', '520000', 'zunyi', 'Z', '0', '3'), ('520400', '安顺', '520000', 'anshun', 'A', '0', '3'), ('522200', '铜仁', '520000', 'tongren', 'T', '0', '3'), ('522300', '黔西南', '520000', 'qianxinan', 'Q', '0', '0'), ('522400', '毕节', '520000', 'bijie', 'B', '0', '3'), ('522600', '黔东南', '520000', 'qiandongnan', 'Q', '0', '0'), ('522700', '黔南', '520000', 'qiannan', 'Q', '0', '0'), ('530100', '昆明', '530000', 'kunming', 'K', '0', '2'), ('530300', '曲靖', '530000', 'qujing', 'Q', '0', '3'), ('530400', '玉溪', '530000', 'yuxi', 'Y', '0', '3'), ('530500', '保山', '530000', 'baoshan', 'B', '0', '3'), ('530600', '昭通', '530000', 'zhaotong', 'Z', '0', '3'), ('530700', '丽江', '530000', 'lijiang', 'L', '0', '3'), ('530800', '普洱', '530000', 'puer', 'P', '0', '3'), ('530900', '临沧', '530000', 'lincang', 'L', '0', '3'), ('532300', '楚雄', '530000', 'chuxiong', 'C', '0', '3'), ('532500', '红河', '530000', 'honghe', 'H', '0', '0'), ('532600', '文山', '530000', 'wenshan', 'W', '0', '3'), ('532800', '西双版纳', '530000', 'xishuangbanna', 'X', '0', '0'), ('532900', '大理', '530000', 'dali', 'D', '0', '3'), ('533100', '德宏', '530000', 'dehong', 'D', '0', '0'), ('533300', '怒江', '530000', 'nujiang', 'N', '0', '0'), ('533400', '迪庆', '530000', 'diqing', 'D', '0', '0'), ('540100', '拉萨', '540000', 'lasa', 'L', '0', '3'), ('542100', '昌都', '540000', 'changdou', 'C', '0', '0'), ('542200', '山南', '540000', 'shannan', 'S', '0', '0'), ('542300', '日喀则', '540000', 'rikaze', 'R', '0', '3'), ('542400', '那曲', '540000', 'naqu', 'N', '0', '0'), ('542500', '阿里', '540000', 'ali', 'A', '0', '0'), ('542600', '林芝', '540000', 'linzhi', 'L', '0', '0'), ('610100', '西安', '610000', 'xian', 'X', '0', '2'), ('610200', '铜川', '610000', 'tongchuan', 'T', '0', '3'), ('610300', '宝鸡', '610000', 'baoji', 'B', '0', '3'), ('610400', '咸阳', '610000', 'xianyang', 'X', '0', '3'), ('610500', '渭南', '610000', 'weinan', 'W', '0', '3'), ('610600', '延安', '610000', 'yanan', 'Y', '0', '3'), ('610700', '汉中', '610000', 'hanzhong', 'H', '0', '3'), ('610800', '榆林', '610000', 'yulin', 'Y', '0', '3'), ('610900', '安康', '610000', 'ankang', 'A', '0', '3'), ('611000', '商洛', '610000', 'shangluo', 'S', '0', '3'), ('620100', '兰州', '620000', 'lanzhou', 'L', '0', '3'), ('620200', '嘉峪关', '620000', 'jiayuguan', 'J', '0', '3'), ('620300', '金昌', '620000', 'jinchang', 'J', '0', '3'), ('620400', '白银', '620000', 'baiyin', 'B', '0', '3'), ('620500', '天水', '620000', 'tianshui', 'T', '0', '3'), ('620600', '武威', '620000', 'wuwei', 'W', '0', '3'), ('620700', '张掖', '620000', 'zhangye', 'Z', '0', '3'), ('620800', '平凉', '620000', 'pingliang', 'P', '0', '3'), ('620900', '酒泉', '620000', 'jiuquan', 'J', '0', '3'), ('621000', '庆阳', '620000', 'qingyang', 'Q', '0', '3'), ('621100', '定西', '620000', 'dingxi', 'D', '0', '3'), ('621200', '陇南', '620000', 'longnan', 'L', '0', '3'), ('622900', '临夏', '620000', 'linxia', 'L', '0', '3'), ('623000', '甘南', '620000', 'gannan', 'G', '0', '0'), ('630100', '西宁', '630000', 'xining', 'X', '0', '3'), ('632100', '海东', '630000', 'haidong', 'H', '0', '0'), ('632200', '海北', '630000', 'haibei', 'H', '0', '0'), ('632300', '黄南', '630000', 'huangnan', 'H', '0', '0'), ('632500', '海南', '630000', 'hainan', 'H', '0', '0'), ('632600', '果洛', '630000', 'guoluo', 'G', '0', '0'), ('632700', '玉树', '630000', 'yushu', 'Y', '0', '0'), ('632800', '海西', '630000', 'haixi', 'H', '0', '0'), ('640100', '银川', '640000', 'yinchuan', 'Y', '0', '3'), ('640200', '石嘴山', '640000', 'shizuishan', 'S', '0', '3'), ('640300', '吴忠', '640000', 'wuzhong', 'W', '0', '3'), ('640400', '固原', '640000', 'guyuan', 'G', '0', '3'), ('640500', '中卫', '640000', 'zhongwei', 'Z', '0', '3'), ('650100', '乌鲁木齐', '650000', 'wulumuqi', 'W', '0', '3'), ('650200', '克拉玛依', '650000', 'kelamayi', 'K', '0', '3'), ('650300', '米泉', '650000', 'miquan', 'M', '0', '3'), ('652100', '吐鲁番', '650000', 'tulufan', 'T', '0', '3'), ('652200', '哈密', '650000', 'hami', 'H', '0', '3'), ('652300', '昌吉', '650000', 'changji', 'C', '0', '3'), ('652700', '博尔塔拉', '650000', 'boertala', 'B', '0', '0'), ('652800', '巴音郭楞', '650000', 'bayinguoleng', 'B', '0', '0'), ('652900', '阿克苏', '650000', 'akesu', 'A', '0', '3'), ('653000', '克孜勒苏', '650000', 'kezilesu', 'K', '0', '0'), ('653100', '喀什', '650000', 'kashen', 'K', '0', '3'), ('653200', '和田', '650000', 'hetian', 'H', '0', '3'), ('654000', '伊犁', '650000', 'yili', 'Y', '0', '0'), ('654200', '塔城', '650000', 'tacheng', 'T', '0', '3'), ('654300', '阿勒泰', '650000', 'aletai', 'A', '0', '3'), ('655100', '石河子', '650000', 'shihezi', 'S', '0', '3'), ('655200', '阿拉尔', '650000', 'alaer', 'A', '0', '3'), ('655300', '图木舒克', '650000', 'tumushuke', 'T', '0', '3'), ('655400', '五家渠', '650000', 'wujiaqu', 'W', '0', '3'), ('710100', '台湾', '710000', 'taiwan', 'T', '0', '3'), ('810100', '香港', '810000', 'xianggang', 'X', '0', '3'), ('820100', '澳门', '820000', 'aomen', 'A', '0', '3');
COMMIT;