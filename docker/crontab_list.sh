# 每3天的23:50分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重)
50 23 */3 * * find /scripts/logs -name '*.log' | grep -v 'sharecodeCollection' | xargs rm -rf
#收集助力码
30 * * * * sh +x /scripts/docker/auto_help.sh collect >> /scripts/logs/auto_help_collect.log 2>&1

#京东月资产变动通知
10 7 1-31/7 * * node /scripts/jd_all_bean_changecdle.js >> /scripts/logs/jd_all_bean_changecdle.log 2>&1


#清理node
44 12,0 * * * killall node
##############短期活动##############
#财富岛提现
0 12,0 * * * node /scripts/jd_cfd_withdraw.js  >> /scripts/logs/jd_cfd_withdraw.log 2>&1
50 * * * * node /scripts/jd_cfd_hb.js  >> /scripts/logs/jd_cfd_hb.log 2>&1
#点点券
20 0,20 * * * node /scripts/jd_necklace_new.js >> /scripts/logs/jd_necklace_new.log 2>&1
#预存validate
59 7,15,23 * * * node /scripts/jd_validate_Worker.js >> /scripts/logs/jd_validate_Worker.log 2>&1
#宠汪汪兑换京豆
58 7,15,23 * * * node /scripts/jd_joy_reward_Mod.js >> /scripts/logs/jd_joy_reward_Mod.log 2>&1
#省钱大赢家之翻翻乐
20 * * * * node /scripts/jd_big_winner.js >> /scripts/logs/jd_big_winner.log 2>&1
##############长期活动##############
# 签到
7 0,17 * * * cd /scripts && node jd_bean_sign.js >> /scripts/logs/jd_bean_sign.log 2>&1
#京东资产变动通知
2 9 * * * node /scripts/jd_bean_change.js >> /scripts/logs/jd_bean_change.log 2>&1
#领京豆额外奖励
2 9 * * * node /scripts/jd_bean_home.js >> /scripts/logs/jd_bean_home.log 2>&1
#美丽研究院
#1 7,12,19 * * * node /scripts/jd_beauty.js >> /scripts/logs/jd_beauty.log 2>&1
# 东东超市兑换奖品
0 0 * * * node /scripts/jd_blueCoin.js >> /scripts/logs/jd_blueCoin.log 2>&1
# 京东汽车(签到满500赛点可兑换500京豆)
10 7 * * * node /scripts/jd_car.js >> /scripts/logs/jd_car.log 2>&1
# 京东汽车旅程赛点兑换金豆
0 0 * * * node /scripts/jd_car_exchange.js >> /scripts/logs/jd_car_exchange.log 2>&1
# 签到领现金
2 0-23/4 * * * node /scripts/jd_cash.js >> /scripts/logs/jd_cash.log 2>&1
#京喜财富岛
#5 */1 * * * node /scripts/jd_cfd.js >> /scripts/logs/jd_cfd.log 2>&1
#摇京豆
5 0,23 * * * node /scripts/jd_club_lottery.js >> /scripts/logs/jd_club_lottery.log 2>&1
# 删除优惠券(默认注释，如需要自己开启，如有误删，已删除的券可以在回收站中还原，慎用)
#20 9 * * 6 node /scripts/jd_delCoupon.js >> /scripts/logs/jd_delCoupon.log 2>&1
#京喜工厂
10 * * * * node /scripts/jd_dreamFactory.js >> /scripts/logs/jd_dreamFactory.log 2>&1
#京喜工厂助力
10 * * * * node /scripts/jd_dreamFactory_help.js >> /scripts/logs/jd_dreamFactory_help.log 2>&1
#京东家庭号
#1 12,23 * * * node /scripts/jd_family.js >> /scripts/logs/jd_family.log 2>&1
#东东农场
5 6-18/6 * * * node /scripts/jd_fruit.js >> /scripts/logs/jd_fruit.log 2>&1
20 6-18/6 * * * node /scripts/jd_fruitnew.js >> /scripts/logs/jd_fruitnew.log 2>&1
#农场补充任务
0 11,12 * * * node /scripts/jd_fruit_moreTask.js >> /scripts/logs/jd_fruit_moreTask.log 2>&1
#金榜创造营
13 1,22 * * * node /scripts/jd_gold_creator.js >> /scripts/logs/jd_gold_creator.log 2>&1
#东东健康社区
13 1,6,22 * * * node /scripts/jd_health.js >> /scripts/logs/jd_health.log 2>&1
#东东健康社区收集能量
5-45/20 * * * * node /scripts/jd_health_collect.js >> /scripts/logs/jd_health_collect.log 2>&1
#东东工厂
10 * * * * node /scripts/jd_jdfactory.js >> /scripts/logs/jd_jdfactory.log 2>&1
# 京东赚赚
10 0 * * * node /scripts/jd_jdzz.js >> /scripts/logs/jd_jdzz.log 2>&1
#领金贴
10 0 * * * node /scripts/jd_jin_tie.js >> /scripts/logs/jd_jin_tie.log 2>&1
#京喜农场
0 9,12,18 * * * node /scripts/jd_jxnc.js >> /scripts/logs/jd_jxnc.log 2>&1
#京东快递签到
10 0 * * * node /scripts/jd_kd.js >> /scripts/logs/jd_kd.log 2>&1
#京东直播
10-20/5 12 * * * node /scripts/jd_live.js >> /scripts/logs/jd_live.log 2>&1
#超级直播间红包雨
#0,30 0-23/1 * * * node /scripts/jd_live_redrain.js >> /scripts/logs/jd_live_redrain.log 2>&1
#整点红包雨
0 * * * * node /scripts/jd_redrain.js >> /scripts/logs/jd_redrain.log 2>&1
#幸运大转盘
#4 10 * * * node /scripts/jd_market_lottery.js >> /scripts/logs/jd_market_lottery.log 2>&1
#京东摇钱树
3 0-23/2 * * * node /scripts/jd_moneyTree.js >> /scripts/logs/jd_moneyTree.log 2>&1
#京东秒秒币
10 7 * * * node /scripts/jd_ms.js >> /scripts/logs/jd_ms.log 2>&1
#东东萌宠
15 6-18/6 * * * node /scripts/jd_pet.js >> /scripts/logs/jd_pet.log 2>&1
#京东金融养猪猪
12 0-23/6 * * * node /scripts/jd_pigPet.js >> /scripts/logs/jd_pigPet.log 2>&1
#京东种豆得豆
1 7-21/2 * * * node /scripts/jd_plantBean.js >> /scripts/logs/jd_plantBean.log 2>&1
#京东保价
41 0,23 * * * node /scripts/jd_price.js >> /scripts/logs/jd_price.log 2>&1
#京东全民开红包
1 1,2,23 * * * node /scripts/jd_redPacket.js >> /scripts/logs/jd_redPacket.log 2>&1
#闪购盲盒
20 8 * * * node /scripts/jd_sgmh.js >> /scripts/logs/jd_sgmh.log 2>&1
#进店领豆
10 0 * * * node /scripts/jd_shop.js >> /scripts/logs/jd_shop.log 2>&1
#东东小窝
16 22 * * * node /scripts/jd_small_home.js >> /scripts/logs/jd_small_home.log 2>&1
#天天加速
8 0-23/3 * * * node /scripts/jd_speed.js >> /scripts/logs/jd_speed.log 2>&1
#京东极速版红包
8,9,10 1 * * * node /scripts/jd_speed_redpocke.js >> /scripts/logs/jd_speed_redpocke.log 2>&1
#京东极速版
0 7 * * * node /scripts/jd_speed_sign.js >> /scripts/logs/jd_speed_sign.log 2>&1
0 6 * * * node /scripts/jd_speed_sign_Mod.js >> /scripts/logs/jd_speed_sign_Mod.log 2>&1
#东东超市
#11 * * * * node /scripts/jd_superMarket.js >> /scripts/logs/jd_superMarket.log 2>&1
#赚京豆
10 0,7,23 * * * node /scripts/jd_syj.js >> /scripts/logs/jd_syj.log 2>&1
#取关京东店铺商品
55 23 * * * node /scripts/jd_unsubscribe.js >> /scripts/logs/jd_unsubscribe.log 2>&1
# 京东抽奖机
0 0,12,23 * * * node /scripts/jd_lotteryMachine.js >> /scripts/logs/jd_lotteryMachine.log 2>&1
# 京东排行榜
#21 9 * * * node /scripts/jd_rankingList.js >> /scripts/logs/jd_rankingList.log 2>&1
#东东电竞经理
#0 0-23/2 * * * node /scripts/jd_EsportsManager.js >> /scripts/logs/jd_EsportsManager.log 2>&1
#环境测试
0 12 * * * node /scripts/jd_api_test.js >> /scripts/logs/jd_api_test.log 2>&1
#京喜牧场
20 0-23/3 * * *  node /scripts/jd_jxmc.js >> /scripts/logs/jd_jxmc.log 2>&1
#京喜签到
10 9 * * *  node /scripts/jx_sign.js >> /scripts/logs/jx_sign.log 2>&1
#领京豆
0 9,12 * * * node /scripts/jd_bean_box.js >> /scripts/logs/jd_bean_box.log 2>&1

#test js#
23 8,9 * * * node /scripts/jd_productZ4Brand.js >> /scripts/logs/jd_productZ4Brand.log 2>&1
35 1,23 * * * node /scripts/jd_nzmh.js >> /scripts/logs/jd_nzmh.log 2>&1
12 9,15 1-30 9,10 * node /scripts/jd_xinxiangyin.js >> /scripts/logs/jd_xinxiangyin.log 2>&1
23 15 13-26 9 *  node /scripts/jd_film_museum.js >> /scripts/logs/jd_film_museum.log 2>&1
10 0 * * * node /scripts/jd_ddworld.js >> /scripts/logs/jd_ddworld.log 2>&1
0 0 * * * node /scripts/jd_dpqd.js >> /scripts/logs/jd_dpqd.log 2>&1
20 0,16 * * * node /scripts/jd_ttpt.js >> /scripts/logs/jd_ttpt.log 2>&1
#超市抢豆
#23 7,9 * * * node /scripts/jd_xsqjd.js >> /scripts/logs/jd_xsqjd.log 2>&1
#京喜领红包
#4 3,13,21 * * * node /scripts/jd_jxlhb.js >> /scripts/logs/jd_jxlhb.log 2>&1
#抢京豆
0 0,12,20 * * * node /scripts/jd_qjd.js >> /scripts/logs/jd_qjd.log 2>&1
#整点红包雨
3 0-23/1 * * * node /scripts/jd_super_redrain.js >> /scripts/logs/jd_super_redrain.log 2>&1
#内容鉴赏官
15 3,6 * * *  node /scripts/jd_connoisseur.js >> /scripts/logs/jd_connoisseur.log 2>&1
#跳跳乐瓜分京豆
1 0,11,21 * * * node /scripts/jd_jump.js >> /scripts/logs/jd_jump.log 2>&1
#京喜工厂商品详情
10 10 * * * node /scripts/jd_jxgckc.js >> /scripts/logs/jd_jxgckc.log 2>&1
#牛牛福利
#1 0,19,23 * * * node /scripts/jd_nnfls.js >> /scripts/logs/jd_nnfls.log 2>&1
#农场集勋章
16 7,16 * * * node /scripts/jd_medal_Mod.js >> /scripts/logs/jd_medal_Mod.log 2>&1
#京东年货签到
23 7 * * * node /scripts/jd_nh_sign.js >> /scripts/logs/jd_nh_sign.log 2>&1
#会场红包雨
21 20,21 * * * node /scripts/jd_hc_rain.js >> /scripts/logs/jd_hc_rain.log 2>&1
#京东通天塔--签到
3 0 * * * node /scripts/jd_m_sign.js >> /scripts/logs/jd_m_sign.log 2>&1
#京东会场红包
0 0,10,20 * * * node /scripts/jd_nhs_red.js >> /scripts/logs/jd_nhs_red.log 2>&1
#城城领现金
0 0,9,18,22 * * * node /scripts/jd_city.js >> /scripts/logs/jd_city.log 2>&1
#金榜
13 7 * * * node /scripts/jd_gold_sign.js >> /scripts/logs/jd_gold_sign.log 2>&1
#小魔方
20 4,19 * * * node /scripts/jd_xmf.js >> /scripts/logs/jd_xmf.log 2>&1
#领券中心
15 0 * * * node /scripts/jd_ccSign.js >> /scripts/logs/jd_ccSign.log 2>&1
#京东汽车 - 右下角 - 领京豆
10 8 * * * node /scripts/jd_mpdzcar.js >> /scripts/logs/jd_mpdzcar.log 2>&1
10 6,10,12 * * * node /scripts/jd_mpdzcar_game.js >> /scripts/logs/jd_mpdzcar_game.log 2>&1
#众筹许愿池
40 0,2 * * * node /scripts/jd_wish.js >> /scripts/logs/jd_wish.log 2>&1
#618 19亿
#33 0,6-23/2 * * * node /scripts/jd_19E.js >> /scripts/logs/jd_19E.log 2>&1
#京东签到图形验证
14 10 * * * node /scripts/jd_sign_graphics.js >> /scripts/logs/jd_sign_graphics.log 2>&1
#京东极速版-百元生活费-玩游戏现金可提现
15 10 * * * node /scripts/jd_jfcz.js >> /scripts/logs/jd_jfcz.log 2>&1
#plus专属礼
9 8 * * * node /scripts/jd_plus2bean.js >> /scripts/logs/jd_plus2bean.log 2>&1
#入口：APP首页-领京豆-升级赚京豆
21 9 * * * node /scripts/jd_gua_MMdou_Mod.js >> /scripts/logs/jd_gua_MMdou_Mod.log  2>&1
#年货节
#0 0,20 * * * node /scripts/jd_rednhj.js  >> /scripts/logs/jd_rednhj.log 2>&1

#10 9 * * * node /scripts/jd_crazy_joy.js >> /scripts/logs/jd_crazy_joy.log 2>&1
#监控crazyJoy分红
#10 12 * * * node /scripts/jd_crazy_joy_bonus.js >> /scripts/logs/jd_crazy_joy_bonus.log 2>&1
#手机狂欢城
#0 0-18/6 * * * node /scripts/jd_carnivalcity.js  >> /scripts/logs/jd_carnivalcity.log 2>&1