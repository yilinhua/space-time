<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>时空医药管理系统</title>
<link rel="stylesheet" type="text/css" href="Styles/admin-all.css" />
<link rel="stylesheet" type="text/css" href="Styles/base.css" />
<link rel="stylesheet" type="text/css" href="Styles/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="Styles/ui-lightness/jquery-ui-1.8.22.custom.css" />
<script type="text/javascript" src="Scripts/jquery-1.7.2.js"></script>
<script type="text/javascript"
	src="Scripts/jquery-ui-1.8.22.custom.min.js"></script>
<script type="text/javascript" src="Scripts/index.js"></script>

</head>
<body>
	<div class="warp">
		<!--头部开始-->
		<div class="top_c">
			<div class="top-menu">
				<ul class="top-menu-nav">
					<li><a href="#">首页</a></li>
					<li><a href="#">合同管理<i class="tip-up"></i></a>
						<ul class="kidc">
							<li><a target="Conframe" href="Template/find-form.html">合同登记</a></li>
							<li><a target="Conframe" href="Template/find-alert.html">审核</a></li>
							<li><a target="Conframe" href="Template/find-order.html">查询</a></li>
							<li><a target="Conframe" href="Template/find-1.html">文档管理</a></li>
							<li><a target="Conframe" href="Template/find-2.html">统计报表</a></li>
							<li><a target="Conframe" href="Template/find-3.html">执行情况</a></li>
						</ul></li>
					<li><a href="#">维护界面<i class="tip-up"></i></a>
						<ul class="kidc">
							<li><b class="tip"></b><a target="Conframe"
								href="Template/Maintain-add.html">增加</a></li>
							<li><b class="tip"></b><a target="Conframe"
								href="Template/Maintain-edit.html">修改</a></li>
							<li><b class="tip"></b><a target="Conframe"
								href="Template/Maintain-del.html">删除</a></li>
						</ul></li>
					<li><a href="#">表单风格<i class="tip-up"></i></a>
						<ul class="kidc">
							<li><b class="tip"></b><a target="Conframe"
								href="Template/form-Master-slave.html">主从表单</a></li>
							<li><b class="tip"></b><a target="Conframe"
								href="Template/form-collapse.html">折叠表单</a></li>
							<li><b class="tip"></b><a target="Conframe"
								href="Template/form-tabs.html">标签式表单</a></li>
							<li><b class="tip"></b><a target="Conframe"
								href="Template/form-tree.html">树+表单</a></li>
							<li><b class="tip"></b><a target="Conframe"
								href="Template/form-guide.html">向导</a></li>
							<li><b class="tip"></b><a target="Conframe"
								href="Template/form-tabs-list.html">标签页+列表</a></li>
						</ul></li>
					<li><a href="#">提示<i class="tip-up"></i></a>
						<ul class="kidc">
							<li><b class="tip"></b><a target="Conframe"
								href="Template/Alert.html">权限提示</a></li>
							<li><b class="tip"></b><a target="Conframe"
								href="Template/Alert.html">出错提示</a></li>
							<li><b class="tip"></b><a target="Conframe"
								href="Template/Alert.html">警告提示</a></li>
							<li><b class="tip"></b><a target="Conframe"
								href="Template/Alert.html">询问提示</a></li>
							<li><b class="tip"></b><a target="Conframe"
								href="Template/Alert.html">对话框一</a></li>
							<li><b class="tip"></b><a target="Conframe"
								href="Template/Alert.html">对话框二</a></li>
						</ul></li>
					<li><a href="#">辅助信息<i class="tip-up"></i></a>
						<ul class="kidc">
							<li><b class="tip"></b><a target="Conframe"
								href="Template/order.html">采购订单</a></li>
							<li><b class="tip"></b><a target="Conframe"
								href="Template/formstyle.html">我的账单</a></li>
							<li><b class="tip"></b><a target="Conframe"
								href="Template/formstyle.html">我的钱包</a></li>
							<li><b class="tip"></b><a target="Conframe"
								href="Template/formstyle.html">消息中心</a></li>
						</ul></li>
				</ul>
			</div>
			<div class="top-nav"><div id="nowtime"></div>&nbsp;欢迎您:${name}&nbsp;<a href="#">修改密码</a>
				| <a href="index.html">安全退出</a>
			</div>
		</div>
		<!--头部结束-->
		<!--左边菜单开始-->
		<div class="left_c left">
			<h1>系统操作菜单</h1>
			<div class="acc">
				<div>
					<a class="one">账户管理</a>
					<ul class="kid">
						<li><b class="tip"></b><a target="Conframe"
							href="Template/find-form.html">账户生成</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/find-alert.html">账户注销</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/find-order.html">账户权限</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/find-1.html">注销权限</a></li>
					</ul>
				</div>
				<div>
					<a class="one">合同管理</a>
					<ul class="kid">
						<li><b class="tip"></b><a target="Conframe"
							href="hetong/moban.jsp">合同登记</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="hetong/selectAll.html">查询</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="hetong/shenhe.jsp">审核</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="hetong/wendang.jsp">文档管理</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="hetong/tongji.jsp">统计报表</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="hetong/qingk.jsp">执行情况</a></li>
					</ul>
				</div>
				<div>
					<a class="one">采购管理</a>
					<ul class="kid">
						<li><b class="tip"></b><a target="Conframe"
							href="selectList">订货管理</a>
							</li>
							
						<li><b class="tip"></b><a target="Conframe"
							href="Template/Maintain-edit.html">开票管理</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="selectLists">入库管理</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/Maintain-del.html">退出开票</a></li>
					</ul>
				</div>
				<div>
					<a class="one">集团管理</a>
					<ul class="kid">
						<li><b class="tip"></b><a target="Conframe"
							href="Template/Alert.html">集中管理</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/Alert.html">松散管理</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/Alert.html">混合管理</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/Alert.html">内调管理</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/Alert.html">集中采购管理</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/Alert.html">往来确认管理</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/Alert.html">外调出库</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/Alert.html">外调入库</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/Alert.html">外调退出</a></li>
					</ul>
				</div>
				<div>
					<a class="one">集团报表</a>
					<ul class="kid">
						<li><b class="tip"></b><a target="Conframe"
							href="jituanBB/shuju.jsp">数据查询</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="jituanBB/baobiao.jsp">报表</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="jituanBB/fenxi.jsp">统计分析</a></li>
					</ul>
				</div>
				<div>
					<a class="one">库存管理</a>
					<ul class="kid">
						<li><b class="tip"></b><a target="Conframe"
							href="Template/order.html">货架管理</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">盘点管理</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">移库管理</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">损溢管理</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">拆装管理</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">暂存管理</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">饮片管理</a></li>
					</ul>
				</div>
				<div>
					<a class="one">批发管理</a>
					<ul class="kid">
						<li><b class="tip"></b><a target="Conframe"
							href="Template/order.html">订单管理</a>
							</li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">开票管理</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">出库管理</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">退出入库</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">预报价管理</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">业务数据查询</a></li>
					</ul>
				</div>
				<div>
					<a class="one">仓储管理</a>
					<ul class="kid">
						<li><b class="tip"></b><a target="Conframe"
							href="Template/order.html">基础知识管理</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">上架流程管理</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">下架流程管理</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">数据调整</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">货架移动</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">仓储盘点</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">TMS管理</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">查询分析</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">库房状态</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">电子标签接口</a></li>
					</ul>
				</div>
				<div>
					<a class="one">GSP管理</a>
					<ul class="kid">
						<li><b class="tip"></b><a target="Conframe"
							href="Template/order.html">采购与签收</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">储存与养护</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">销售与复核</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">设备与使用</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">售后跟踪与监督管理</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">台账</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">制度</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">文件管理</a></li>
					</ul>
				</div>
				<div>
					<a class="one">财务结算管理</a>
					<ul class="kid">
						<li><b class="tip"></b><a target="Conframe"
							href="Template/order.html">采购结算</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">销售结算</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">配送结算</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">财务结算</a></li>
					</ul>
				</div>
				<div>
					<a class="one">财务辅助管理</a>
					<ul class="kid">
						<li><b class="tip"></b><a target="Conframe"
							href="Template/order.html">发票管理</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">退补价管理</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">价格管理</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">成本结算管理</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">月末转结</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">账簿管理</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">业务财务查询</a></li>
					</ul>
				</div>
				<div>
					<a class="one">决策分析</a>
					<ul class="kid">
						<li><b class="tip"></b><a target="Conframe"
							href="juece/lingshou.jsp">零售分析</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="juece/pifa.jsp">批发分析</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="juece/kucun.jsp">库存分析</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="juece/caigou.jsp">采购分析</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="juece/liansuo.jsp">连锁分析</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="juece/yingshou.jsp">应收应付分析</a></li>
					</ul>
				</div>
				<div>
					<a class="one">资料初装</a>
					<ul class="kid">
						<li><b class="tip"></b><a target="Conframe"
							href="cargo">货位资料初装</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">商品资料初装</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">客商资料初装</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">采购分析初装</a></li>
					</ul>
				</div>
				<div>
					<a class="one">基础维护</a>
					<ul class="kid">
						<li><b class="tip"></b><a target="Conframe"
							href="Template/order.html">货位资料维护</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">商品资料维护</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">客商资料维护</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">部门资料维护</a></li>
						<li><b class="tip"></b><a target="Conframe"
							href="Template/formstyle.html">考勤管理</a></li>
					</ul>
				</div>
				<div id="datepicker"></div>
			</div>

		</div>
		<!--左边菜单结束-->
		<!--右边框架开始-->
		<div class="right_c">
			<div class="nav-tip" onclick="javascript:void(0)">&nbsp;</div>

		</div>
		<div class="Conframe">
			<iframe name="Conframe" id="Conframe"></iframe>
		</div>
		<!--右边框架结束-->

		<!--底部开始-->
		<div class="bottom_c">Copyright &copy;2005-2011 深圳艺谷发展科技有限公司
			版权所有</div>
		<!--底部结束-->
	</div>


</body>

<script type="text/javascript">
 					
            //页面加载调用
            window.onload=function(){
                //每1秒刷新时间
              setInterval("NowTime()",1000);
            }
            function NowTime(){
                //获取年月日
                var time=new Date();
                var year=time.getFullYear();
                var month=time.getMonth()+1;
                var day=time.getDate();
                
                //获取时分秒
                var h=time.getHours();
                var m=time.getMinutes();
                var s=time.getSeconds();
                
                //检查是否小于10
                h=check(h);
                m=check(m);
                s=check(s);
                document.getElementById("nowtime").innerHTML="当前时间:"+year+"年"+month+"月"+day+"日  "+h+":"+m+":"+s;
            }
            //时间数字小于10，则在之前加个“0”补位。
            function check(i){
                //方法一，用三元运算符
                var num;
                i<10?num="0"+i:num=i;
                return num;
                
                //方法二，if语句判断
                //if(i<10){
                //    i="0"+i;
                //}
                //return i;
            }
        </script>
</script>
</html>
