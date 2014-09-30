<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.js"></script>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery.address/1.6/jquery.address.js"></script>
	<script src="../js/bootstrap.js"></script>
    <link href="../css/bootstrap.css" rel="stylesheet">

	<!-- address 这个包 是 使用semantic 的Tab 类时必须的。 -->
	<script type="text/javascript" src="../js/semantic.js"></script>
	<script type="text/javascript" src="../js/jquery.tablesort.js"></script>
	<link rel="stylesheet" type="text/css" href="../css/semantic.css">
<style type="text/css">
	
</style>
<script type="text/javascript">
	var picindex=0;
	var picarr=["../images/粉色小花1.jpg","../images/蓝海贝壳1.jpg","../images/竹林1.jpg","../images/蓝色幻想1.jpg",
	            "../images/蓝天鲜花1.jpg","../images/夕阳湖畔1.jpg","../images/夕阳绿草1.jpg","../images/白岛天际1.jpg"
	            ];
	$(function(){
		//变化图片
		$("#tbl_subwayline").tablesort();
		$(".overlay.sidebar").sidebar({
			overlay: true
		});
		$(".ui.sidebar").sidebar("attach events", "#personal")
		$(".ui.dropdown").dropdown();
		$(".filter.menu .item").tab();
		/* $(".ui.launch.button").on("mouseenter",function(){			//这里不要使用 mouseover
			if($(".ui.launch.button span").is(":hidden")){
				$(".ui.launch.button span").show(300);
			}
		});
		$(".ui.launch.button").on("mouseleave",function(){			//这里不要使用 mouseleave
			if($(".ui.launch.button span").is(":visible")){
				$(".ui.launch.button span").hide(200);
			}
		}); */
		$("#changepanel").on("click",function(){
			if($("#threetab").is(":hidden")){
				$("#threeblock").hide(300);
				$("#threetab").show(400);
				$("#changepanel").html("<i class='shuffle icon'></i>三页签");
			}
			if($("#threeblock").is(":hidden")){
				$("#threeblock").show(400);
				$("#threetab").hide(300);
				$("#changepanel").html("<i class='shuffle icon'></i>三面板");
			}
		});
		$("#updown").on("click",function(){
			if($("#advice_label").is(":hidden")){
				/* $("#updown img").attr("src","../images/down.png"); */
				$("#updown").removeClass("up").addClass("down")
				$("#advice_label").show(300);
			}else if($("#advice_label").is(":visible")){
				/* $("#updown img").attr("src","../images/up.png"); */
				$("#updown").removeClass("down").addClass("up")
				$("#advice_label").hide(400);
			}
		})
		window.setTimeout(changpic,0);
	})

	var changpic=function(){
		$("#divbg").fadeOut(200,function(){
			$("#divbg").css("background-image","url("+picarr[picindex]+")");
		});
		$("#divbg").fadeIn(400);
		picindex=(++picindex)%picarr.length;
		window.setTimeout(changpic,60*1000);
	}
</script>
</head>
<body > 
	<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 页面头 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
	
	
		<div class="ui fixed transparent inverted  main menu" >
			<div class="container"  >
				<a class=" item"><i class="home icon"></i>主页</a>
				<a class=" item"><i class="mail icon"></i>消息</a>
				<div class="ui  dropdown item">	
				 	我的收藏<i class="dropdown icon"></i>
				    <div class="menu">
				        <a class="item">我的查询收藏1</a>
				        <a class="item">我的查询收藏2</a>
				        <a class="item">我的查询收藏3</a>
				    </div>
				</div>
				<div class="right menu" >
					<a class=" item" id="personal"><i class="tags icon"></i>个人快捷收藏</a>
					<a class=" item" id="changepanel"><i class="shuffle icon"></i>三面板</a>
					<a class=" item"><i class="user basic icon"></i>登陆</a>
					<a class=" item"><i class="add user basic icon"></i>注册</a>
					<!-- <div class=" item">
						<div class="ui icon input">
							<input type="text" placeholder="search...">
							<i class="search link icon"></i>
						</div>
					</div> -->
				</div>
			</div>
		</div>
		
		<!--************************** 侧边栏 inverted 表示颜色反转 ****************************-->
		<div class="ui green vertical overlay right sidebar menu">	
			<a class="item">
				<i class="setting icon"></i><font color="blue">定制个人快捷收藏</font>
			</a>
			<div class="item">
				<i class="globe basic icon"></i><b>自助服务</b>
				<a class="item">
					PT环境使用说明
					<!-- <span class="ui label">21</span> -->
				</a>
			</div>
			<div class="item">
				<i class="unhide icon"></i><b>研发看板</b>
				<a class="item">KIS地铁线运行情况 </a>
				<a class=" item">EAS web自动化用例运行情况</a>
			</div>
			<div class="item">
				<i class="sitemap icon"></i><b>工作流程</b>
				<a class="item">svn申请工作流</a> 
				<a class="item">dmp提单传送门</a> 
				<!-- <div class="ui dropdown  item">
					<i class="add icon"></i>英国  
					<div class="menu">
						<a class="item"><i icon="like icon"></i>大不列颠</a>
						<a class="item"><i icon="star icon"></i>苏格兰</a>
					</div> 
				</div> -->
			</div>
			<!-- <div class="ui dropdown item">
			    爱酷学习网 <i class="dropdown icon"></i>
			    <div class="menu">
			        <a class="item">我的视频教程</a>
			        <a class="item">全部视频教程</a>
			        <a class="item">主页</a>
			    </div>
			</div> -->
		</div>
		<!-- <div class="ui dropdown item">
		 	爱酷学习网 <i class="dropdown icon"></i>
		    <div class="menu">
		        <a class="item">我的视频教程</a>
		        <a class="item">全部视频教程</a>
		        <a class="item">主页</a>
		    </div>
		</div>
		<div class="ui dropdown item">
				<i class="add icon"></i>手机  
				<div class="menu">
					<a class="item"><i icon="like icon"></i>好手机</a>
					<a class="item"><i icon="star icon"></i>坏手机</a>
				</div> 
			</div> -->
		<!-- <div class="ui  blue launch button" style="float:right;">
			<i class=" list layout icon"></i>
			<span style="display: inline;">侧边栏</span>
		</div> -->
		<!-- ****************************** 搜索框框  ******************************* -->
	<div id="divbg" style="height:380px;">  
		<div style="height: 230px;"></div>
		<div class="ui center aligned three column  grid">
			<div class="five wide column"></div>
			<div class="eight wide column">
				<div class="row">
					<div class="ui massive icon input">
						<input type="text" placeholder="search...">
						<!-- <i class="search link icon"></i> -->
					</div> 
					<div class="ui massive launch blue button">
						<i class="search link icon"></i>搜索
					</div>
				</div>
			</div>    
			<div class="three wide column"></div>
		</div>  <br>    
		<div style="height: 63px;" align="center">
			<!-- <a id="updown" style="text-decoration: none;cursor:pointer;"><img  src="../images/up.png"></a> -->
			<i id="updown" class="blue huge arrow up icon" style="text-decoration: none;cursor:pointer;"></i>
		</div> 
		<!-- <div class="ui grid">    
			<div class=""></div>
		</div> --> 
	</div> 
	<!-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 公告模块：>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> -->
	<div id="advice_label" style="background-color: #ecfaff;display:none">   <!-- style="background-color: #ffffff;" #ecfaff -->
		<div class="container" >
			<div class="ui grid">
				<div class="ten wide column" >
					<span><font style="color: red"><b>公告：</b></font></span>
					<div class="ui grid" > 
						<div class="eight wide column">
							<div class="ui divided inbox selection list" >
								<a class="item"> 
									<div class="description"><i class="red exclamation icon"></i>xx服务器挂了<span style="float: right">11:41</span></div>
								</a>
								<a class="item">
									<div class="description">yy服务器迁移到##上了<span style="float: right">10:41</span></div>
								</a>
								<a class="item">
									<div class="description">家焱请假了，有事儿电185*****123<span style="float: right">09:41</span></div>
								</a> 
							</div>
						</div>
						<div class="eight wide column">
							<div class="ui divided inbox selection list" >
								<a class="item">
									<div class="description"><i class="red exclamation icon"></i>zz项目需要更新jar包<span style="float: right">08:41</span></div>
								</a>
								<a class="item">  
									<div class="description">ci环境升级chrome到36版本再跑web用例<span style="float: right">08:01</span></div>
								</a>
								<a class="item">
									<div class="description">海涛请假了，有事儿电185*****456<span style="float: right">08:00</span></div>
								</a>
							</div>
						</div>
					</div> 
				</div> 
				<!-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 快捷页签：>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> -->
				<div class="six wide column">
					<span><font style="color:blue">个人快捷页签：</font></span><a href="#" style="text-decoration:none;"><i class="setting icon"></i></a>
					<div class="ui grid">
						<div class="four wide column"><div class="ui segment"><font size="1">网址1</font></div></div>
						<div class="four wide column"><div class="ui segment"><font size="1">网址2</font></div></div>
						<div class="four wide column"><div class="ui segment"><font size="1">网址3</font></div></div> 
						<div class="four wide column"><div class="ui segment"><font size="1">网址4</font></div></div>
						<div class="four wide column"><div class="ui segment"><font size="1">网址5</font></div></div>
						<div class="four wide column"><div class="ui segment"><font size="1">网址6</font></div></div>
						<div class="four wide column"><div class="ui segment"><font size="1">网址7</font></div></div>
						<div class="four wide column"><div class="ui segment"><font size="1">网址8</font></div></div>
					</div>
				</div>
			</div>
			<div class="ui horizontal icon divider">
				<i class="circular heart icon"></i>
        	</div>
		</div>
	</div>
	
	<!-- ***************************** 三分主体 ************************************ -->
		<div id="threeblock" class="ui center aligned divided three column  grid" >
			<div class="five wide column">
				<div style="width:100%;height: 550px;"> 
					<h3>自助服务</h3>
					<div class="ui divided inbox selection list" >
						<a class="item">
							<div class="description">wiki传送门</div>
						</a>
						<a class="item">
							<div class="description">常用链接排名</div>
						</a>
						<a class="item">
							<div class="description">常用链接排名</div>
						</a>
				     </div>
					<div class="ui divider"></div>
				   <div class="ui very small pagination menu">
				     <a class="icon item"><i class="icon left arrow"></i></a>
				     <a class="active item">1</a>
				     <div class="disabled item">...</div>
				     <a class="item">10</a>
				     <a class="item">11</a>
				     <a class="item">12</a>
				     <a class="icon item"><i class="icon right arrow"></i></a>
				   </div>					
				</div>
			</div> 
			<div class="six wide column">
				<div  style="width:100%;height: 550px;">
					<h3>研发看板</h3>
					<div id="threetab_showpanel" class="ui aligned grid" > 
						<div class="ui tabular filter menu">
							<div class="active item" data-tab="feedbackform">反馈提单</div>
							<div class="item" data-tab="subwayline">地铁线</div>
							<div class="item" data-tab="ci">CI</div>
						</div>
						
						<div class="ui center aligned divided active   tab"  data-tab="feedbackform">
							<div class="ui grid"> 
								<div class="sixteen wide column">
									<div class="ui yellow message">  
										<div class="header" >反馈提单信息：<span class="ui circular small orange top right attached label segment">2014-9-23</span></div>
										<ul class="list">
											<li>累计提单： 8185</li> 
											<li>待分单： 25</li> 
											<li>已分单： 50</li>  
											<li>处理中： 5</li> 
											<li>已完成： 8105</li>
										</ul>
									</div>
								</div> 
							</div>
						</div>	
						<div class="ui divided    tab"  data-tab="subwayline">
							<div class="ui grid">
								<div class="sixteen wide column">
									<!-- <div class="ui segment" style="width:100%;height: 430px;background-color:#eeeeee;" > -->
										<table id="tbl_subwayline" class="ui sortable compact small table segment"> 
											<thead> 
											 	<tr>
												 	<th class="ascending">产品</th>	<!-- class="ascending" descending -->
													<th>地铁线</th>
													<th>运行状态</th>
													<th>还剩</th> 
													<th>最近成功</th>
													<th>频率</th>
													<th>订阅</th>
												</tr>
											</thead> 
											<tbody >
											     <tr class="positive">
											         <td>EAS</td>
											         <td><a href="#" onclick="return false;">EAS800冒烟</a></td>
											         <td>2014-9-23 16:58:52</td>
											         <td>131分钟</td>
											         <td>2014-9-23 14:58:52</td>
											         <td>2:00, 12:00, 15:00</td>
											         <td><a href="#" onclick="return false;">已订阅</a></td>
											     </tr>
											     <tr class="negative">
											         <td>EAS</td>
											         <td><a href="#" onclick="return false;">EAS7500冒烟</a></td>
											         <td ><i class="big red remove icon"></i>失败</td>
											        <td>0</td> 
											         <td>2014-9-12 14:34:52</td>
											         <td>2:00, 12:00, 15:00</td>
											         <td><a href="#" onclick="return false;">退订</a></td>
											     </tr>
											     <tr class="positive">
											         <td>k/3 Cloud</td>
											         <td><a href="#" onclick="return false;">k/3 Cloud冒烟</a></td>
											         <td><i class="big green checkmark icon"></i>空闲</td>
											         <td>0</td>
											         <td>2014-9-12 14:34:52</td>
											         <td>2:00, 12:00, 15:00</td>
											         <td><a href="#" onclick="return false;">已订阅</a></td>
											     </tr>
											     <tr class="positive">
											         <td>HR</td>
											         <td><a href="#" onclick="return false;">HR冒烟</a></td>
											         <td>2014-9-20 15:09:52</td>
											         <td>111分钟</td>
											         <td>2014-9-12 14:34:52</td>
											         <td>2:00, 12:00, 15:00</td>
											         <td><a href="#" onclick="return false;">已订阅</a></td>
											     </tr>
											 </tbody>
											 <tfoot>
											 	<tr>
											 		<th colspan="3">正在运行:<a href="#" onclick="return false;"><b>3</b></a></th>
											 		<th colspan="2">空闲:<a href="#" onclick="return false;"><b>2</b></a></th>
											 		<th colspan="2">失败:<a href="#" onclick="return false;"><b>1</b></a></th>
											 	</tr>
											 </tfoot>
										</table>	
								</div>
							</div>
						</div>	
						<div class="ui divided    tab"  data-tab="ci">
							<div class="ui grid">
								<div class="sixteen wide column">
									<!-- <div class="ui segment" style="width:100%;height: 430px;background-color:#eeeeee;" > -->
										<table id="tbl_subwayline" class="ui sortable compact small table segment"> 
											<thead> 
											 	<tr>
												 	<th class="ascending">领域CI</th>	<!-- class="ascending" descending -->
													<th>运行状态</th>
													<th>还剩</th> 
													<th>最近成功</th>
													<th>频率</th>
													<th>订阅</th>
												</tr>
											</thead> 
											<tbody >
											     <tr class="positive">
											         <td><a href="#" onclick="return false;">BOS CI</a></td>
											         <td>2014-9-23 16:58:52</td>
											         <td>131分钟</td>
											         <td>2014-9-23 14:58:52</td>
											         <td>2:00, 12:00, 15:00</td>
											         <td><a href="#" onclick="return false;">已订阅</a></td>
											     </tr>
											     <tr class="negative">
											         <td><a href="#" onclick="return false;">FI CI</a></td>
											         <td ><i class="big red remove icon"></i>失败</td>
											        <td>0</td> 
											         <td>2014-9-12 14:34:52</td>
											         <td>2:00, 12:00, 15:00</td>
											         <td><a href="#" onclick="return false;">退订</a></td>
											     </tr>
											     <tr class="positive">
											         <td><a href="#" onclick="return false;">k/3 Cloud CI</a></td>
											         <td><i class="big green checkmark icon"></i>空闲</td>
											         <td>0</td>
											         <td>2014-9-12 14:34:52</td>
											         <td>2:00, 12:00, 15:00</td>
											         <td><a href="#" onclick="return false;">已订阅</a></td>
											     </tr>
											 </tbody>
											 <tfoot>
											 	<tr>
											 		<th colspan="3">正在运行:<a href="#" onclick="return false;"><b>3</b></a></th>
											 		<th colspan="2">空闲:<a href="#" onclick="return false;"><b>2</b></a></th>
											 		<th colspan="2">失败:<a href="#" onclick="return false;"><b>1</b></a></th>
											 	</tr>
											 </tfoot>
										</table>	
								</div>
							</div>
						</div>	
					</div>
					
					
					
					<!-- <div class="ui  small piled feed " style="">
						<div class="event">
							<div class="label">
								<img src="../images/dtx.jpg">
							</div>
							<div class="content">
								<div class="date">
									10分钟前
								</div>
								<div class="summary">
									EAS<a href="#">地铁线</a>运行结果：xxxx。
								</div>
							</div>
						</div>
						<div class="event">
		       				<div class="label">
								<i class="circular pencil icon"></i>
							</div>
							<div class="content">
								<div class="date">
						            20分钟前
								</div>
								<div class="summary">
									K/3 Cloud <a href="#">WEB自动化用例</a>运行结果：
								</div>
								<div class="extra text">
									10个成功
								</div>
								<div class="extra text">
									1个失败：<a href="#">log日志列表</a>
								</div>
							</div>
						</div>
					</div> -->
				</div>
			</div>
			<div class="five wide column">
				<div  style="width:100%;height: 550px;"> 
					<h3>工作流程</h3>
					<table class="ui small table "> 
						<thead>
						 	<tr>
							 	<th>姓名</th>
								<th>状态</th>
								<th>备注</th>
							</tr>
						</thead>
						<tbody>
						     <tr>
						         <td>张三</td>
						         <td>已接受</td>
						         <td>无</td>
						     </tr>
						     <tr>
						         <td>李四</td>
						         <td>已接受</td>
						         <td>需要电话联系</td>
						     </tr>
						     <tr>
						         <td>王五</td>
						         <td>已拒绝</td>
						         <td>无</td>
						     </tr>
						 </tbody>
						 <tfoot>
						 	<tr>
						 		<th>3个用户</th>
						 		<th>2个已接受</th>
						 		<th></th>
						 	</tr>
						 </tfoot>
					</table>			
				</div>
			</div>
		</div> 
	<!-- -----------------------页签 菜单------------------------------- -->
	<div class="container" >
		<div id="threetab" class="ui center aligned grid" style="display: none">
			<div class="ui tabular filter menu">
				<div class="active item" data-tab="wiki">自助服务</div>
				<div class="item" data-tab="showpanel">研发看板</div>
				<div class="item" data-tab="workflow">工作流程</div>
			</div>
			
			<div class="ui center aligned divided active   tab"  data-tab="wiki">
				<!-- <iframe width="100%" height="500px;" frameborder="0" src="http://zh.wikipedia.org/wiki/Wikipedia:%E9%A6%96%E9%A1%B5"></iframe> -->
				<div class="ui center aligned three column  grid">
					<!-- <div class="one wide column"></div> -->
					<div class="sixteen wide column">
						<div class="ui segment" style="width:100%;height: 430px;background-color:#ddddaa;" >详细信息</div>
					</div>
					<!-- <div class="one wide column"></div> -->
				</div>
			</div>	
			<div class="ui divided    tab"  data-tab="showpanel">
				<!-- <iframe width="100%" height="500px;" frameborder="0" src="http://baike.baidu.com/view/611931.htm?fr=aladdin"></iframe> -->
				<div class="ui center aligned three column  grid">
					<!-- <div class="one wide column"></div>  -->
					<div class="sixteen wide column">
						<div class="ui segment" style="width:100%;height: 430px;background-color:#aadddd;" >详细信息</div>
					</div>
					<!-- <div class="one wide column"></div> -->
				</div>
			</div>	
			<div class="ui divided    tab"  data-tab="workflow">
				<!-- <iframe width="100%" height="500px;"  frameborder="0" src="http://baike.baidu.com/view/926990.htm?fr=aladdin"></iframe> -->
				<div class="ui center aligned three column  grid">
					<!-- <div class="one wide column"></div> -->
					<div class="sixteen wide column">
						<div class="ui segment" style="width:100%;height: 430px;background-color:#eeeeee;" >详细信息</div>
					</div>
					<!-- <div class="one wide column"></div> -->
				</div>
			</div>	
		</div>
	</div>
</body>
</html>