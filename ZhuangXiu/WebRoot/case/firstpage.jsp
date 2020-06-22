<%@page import="com.demo.service.impl.Firstpage.FirstpageServiceImpl"%>
<%@page import="com.demo.service.Firstpage.FirstpageService"%>
<%@page import="com.demo.entity.Firstpage.FirstpagePojo"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">

<title>合肥川豪装饰公司-官方网站  安徽|合肥|室内|装修|装饰|材料|家装|工装|</title>
<meta name="keywords" content="合肥川豪装饰  合肥川豪装饰装修公司  川豪装饰 合肥装修公司" />
<meta name="description" content="合肥川豪装饰公司 " />
<link href="css/css.css" type="text/css" rel="stylesheet" />
<link href="css/muyu.css" rel="stylesheet" type="text/css" />
<script type="text/ecmascript" src="js/js.js"></script>
</head>

<body>
<div class="index_mainbox">
  <div class="mainbox">
    <div class="topbox">
      <div class="logo"><a href="/"><img src="images007/logo.jpg" /></a></div>
      <div class="nav">
        <ul>
         <li class="this"><a href="<%=basePath %>case/firstpage.jsp">首页</a></li>
	          <li><a href="<%=basePath %>userpage/aboutIndex.jsp">关于我们</a></li>
	          <li ><a href="<%=basePath %>actionpage/NewsList.jsp">精彩活动</a></li>
	          <li><a href="<%=basePath %>designerpage/designerlist.jsp">点选设计师</a></li>
	          <li ><a>团装小区</a></li>
			  <!--<li ><a href="/tzxq/index.php?fid=22">团装小区</a></li>-->
	          <li><a href="<%=basePath %>case/caselist.jsp">精品案例</a></li>
	          <li ><a href="/jygc/index.php?act=jjztgy">家居主题公园</a></li>
	          <li ><a href="<%=path %>/userpage/login.jsp">登陆</a></li>
        </ul>
      </div>
    </div>    <div class="banner">
      <link rel="stylesheet" type="text/css" href="css/xixi.css">
      <script type="text/javascript" src="js/jquery.js"></script> 
      <script type="text/javascript" src="js/lrtk.js"></script>
      <div class="focus">
        <ul class="rslides f426x240">
                   
          <li><a href="http://www.hfchuanhao.com/news/view.php?id=40" target="_blank"><img src="images007/VMDXRZIkzC9Jzhl8533.jpg" width="960" height="420" alt="4月" /></a></li>
          
        </ul>
      </div>
    </div>
    <div class="main_contbox">
      <div class="main_cont_list">
        <ul>
          <li>
          	<a href="<%=request.getContextPath() %>/designerpage/designerlist.jsp">
            <div class="main_cont_list_img"><img src="images007/sjs_img.jpg" width="78" height="120" /></div>
            <div class="main_cont_list_title">点选设计师</div>
            <div class="main_cont_list_cont">匹配出属于您的设计师</div>
            <div class="main_cont_list_more">查看更多</div>
            </a>
          </li>
          <li>
          	<a href="/tzxq/index.php?fid=16">
            <div class="main_cont_list_img01"><img src="images007/maincont_img02.jpg" width="105" height="108" /></div>
            <div class="main_cont_list_title">团装小区</div>
            <div class="main_cont_list_cont">从此不必再为装修而烦恼</div>
            <div class="main_cont_list_more">查看更多</div>
            </a>
          </li>
          <li>
          <a href="<%=request.getContextPath() %>/case/caseinfo.jsp">
            <div class="main_cont_list_img02"><img src="images007/maincont_img03.jpg" width="80" height="70" /></div>
            <div class="main_cont_list_title">精品案例</div>
            <div class="main_cont_list_cont">这里有你需要的一切信息</div>
            <div class="main_cont_list_more">查看更多</div>
            </a>
          </li>
          <li>
          	<a href="<%=request.getContextPath() %>/case/caseinfo.jsp">
            <div class="main_cont_list_img03"><img src="images007/maincont_img04.jpg" width="82" height="99" /></div>
            <div class="main_cont_list_title">家居主题公园</div>
            <div class="main_cont_list_cont">开始一段精彩的家具之行</div>
            <div class="main_cont_list_more">查看更多</div>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>
<div class="bottombox">
  <div class="bottommain_contbox">
    <div class="main_cont">
      <div class="main_cont_left">
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <script type="text/javascript" src="js/slide.js" ></script> 
        <script type="text/javascript">
		$().ready(function() {
			$('#slideshow').slide({autoplay: true, duration: 5000, showSlideNumber: true});
		});
	</script>
        <div id="slideshow" style="margin-left:-30px;">
          <div id="slidesContainer">
          <%
          FirstpageService firstpageService=new FirstpageServiceImpl();
          List<FirstpagePojo> firstpagePojos=firstpageService.getfirstpage();
          
          for(FirstpagePojo list:firstpagePojos){
           %>
                  <div class="slide">
              <div class="main_cont_left_title"><span><%=list.getAtime() %></span><b>NEW</b><a href="<%=request.getContextPath() %>/news/view.php?id=46"><%=list.getAtopic() %></a></div>
              <div class="main_cont_left_cont">

	自川豪装饰打造2014年品质amp;服务升级年以来，连番取得好成绩，于4月12、13日举办的2014年春季装修节——春天里开工季更是引爆全城广...</div>
            </div>
	      <%} %>
	 
          </div>
        </div>
      </div>
      <div class="main_cont_right">
       
        <div id="ul1" >
          <div class="main_cont_right_img"><a href="cases/view.php?id=99"><img src="images007/M7E35y7VuuSezhl1408_200x150.jpg" width="127" height="71" /></a></div>
          <div class="main_cont_right_title"><span><a target="_blank" href="http://www29.53kf.com/webCompany.php?arg=hfchuan&style=1&language=zh-cn&lytype=0&charset=gbk&kflist=off&kf=&zdkf_type=1&referer=http%3A%2F%2Fwww.hfchuanhao.com%2F%236d&keyword=http%3A//www.hfchuanhao.com/news/index.php%3Fact%3Dzthd&tfrom=1&tpl=crystal_blue&timeStamp=1375438817518">在线预约</a></span><a href="cases/view.php?id=99">合肥川豪装饰—碧湖云溪</a></div>
           
          <div class="main_cont_right_cont">设计师：张俊贤   联系电话：0551-62666889</div>
                  </div>
	 
        <div id="ul2" style="display:none">
          <div class="main_cont_right_img"><a href="cases/view.php?id=98"><img src="images007/LiiD7gyShG48zhl6324_200x150.jpg" width="127" height="71" /></a></div>
          <div class="main_cont_right_title"><span><a target="_blank" href="http://www29.53kf.com/webCompany.php?arg=hfchuan&style=1&language=zh-cn&lytype=0&charset=gbk&kflist=off&kf=&zdkf_type=1&referer=http%3A%2F%2Fwww.hfchuanhao.com%2F%236d&keyword=http%3A//www.hfchuanhao.com/news/index.php%3Fact%3Dzthd&tfrom=1&tpl=crystal_blue&timeStamp=1375438817518">在线预约</a></span><a href="cases/view.php?id=98">合肥川豪装饰之-简约生活</a></div>
           
          <div class="main_cont_right_cont">设计师：陈萍   联系电话：0551-62666889</div>
                  </div>
	 
        <div id="ul3" style="display:none">
          <div class="main_cont_right_img"><a href="cases/view.php?id=97"><img src="images007/LlKTrV6I2vq6zhl3924_200x150.jpg" width="127" height="71" /></a></div>
          <div class="main_cont_right_title"><span><a target="_blank" href="http://www29.53kf.com/webCompany.php?arg=hfchuan&style=1&language=zh-cn&lytype=0&charset=gbk&kflist=off&kf=&zdkf_type=1&referer=http%3A%2F%2Fwww.hfchuanhao.com%2F%236d&keyword=http%3A//www.hfchuanhao.com/news/index.php%3Fact%3Dzthd&tfrom=1&tpl=crystal_blue&timeStamp=1375438817518">在线预约</a></span><a href="cases/view.php?id=97">合肥川豪装饰之中海原山效果</a></div>
           
          <div class="main_cont_right_cont">设计师：左东旭   联系电话：0551-62666889</div>
                  </div>
	 
        <div id="ul4" style="display:none">
          <div class="main_cont_right_img"><a href="cases/view.php?id=96"><img src="images007/ry8gF2aB6fgvzhl4785_200x150.jpg" width="127" height="71" /></a></div>
          <div class="main_cont_right_title"><span><a target="_blank" href="http://www29.53kf.com/webCompany.php?arg=hfchuan&style=1&language=zh-cn&lytype=0&charset=gbk&kflist=off&kf=&zdkf_type=1&referer=http%3A%2F%2Fwww.hfchuanhao.com%2F%236d&keyword=http%3A//www.hfchuanhao.com/news/index.php%3Fact%3Dzthd&tfrom=1&tpl=crystal_blue&timeStamp=1375438817518">在线预约</a></span><a href="cases/view.php?id=96">合肥川豪装饰之内森庄园效果</a></div>
                  </div>
	 
        <div id="ul5" style="display:none">
          <div class="main_cont_right_img"><a href="cases/view.php?id=95"><img src="images007/RPPFwphJxL2Wzhl254_200x150.jpg" width="127" height="71" /></a></div>
          <div class="main_cont_right_title"><span><a target="_blank" href="http://www29.53kf.com/webCompany.php?arg=hfchuan&style=1&language=zh-cn&lytype=0&charset=gbk&kflist=off&kf=&zdkf_type=1&referer=http%3A%2F%2Fwww.hfchuanhao.com%2F%236d&keyword=http%3A//www.hfchuanhao.com/news/index.php%3Fact%3Dzthd&tfrom=1&tpl=crystal_blue&timeStamp=1375438817518">在线预约</a></span><a href="cases/view.php?id=95">合肥川豪装饰之徽映阁效果</a></div>
           
          <div class="main_cont_right_cont">设计师：左东旭   联系电话：0551-62666889</div>
                  </div>
	 
        <div id="ul6" style="display:none">
          <div class="main_cont_right_img"><a href="cases/view.php?id=94"><img src="images007/87FkiuTxPttJzhl3092_200x150.jpg" width="127" height="71" /></a></div>
          <div class="main_cont_right_title"><span><a target="_blank" href="http://www29.53kf.com/webCompany.php?arg=hfchuan&style=1&language=zh-cn&lytype=0&charset=gbk&kflist=off&kf=&zdkf_type=1&referer=http%3A%2F%2Fwww.hfchuanhao.com%2F%236d&keyword=http%3A//www.hfchuanhao.com/news/index.php%3Fact%3Dzthd&tfrom=1&tpl=crystal_blue&timeStamp=1375438817518">在线预约</a></span><a href="cases/view.php?id=94">合肥川豪装饰之滨湖假日欧式效果</a></div>
           
          <div class="main_cont_right_cont">设计师：左东旭   联系电话：0551-62666889</div>
                  </div>
	 
        <div id="ul7" style="display:none">
          <div class="main_cont_right_img"><a href="cases/view.php?id=93"><img src="images007/BFYaCpdBKcu1zhl1004_200x150.jpg" width="127" height="71" /></a></div>
          <div class="main_cont_right_title"><span><a target="_blank" href="http://www29.53kf.com/webCompany.php?arg=hfchuan&style=1&language=zh-cn&lytype=0&charset=gbk&kflist=off&kf=&zdkf_type=1&referer=http%3A%2F%2Fwww.hfchuanhao.com%2F%236d&keyword=http%3A//www.hfchuanhao.com/news/index.php%3Fact%3Dzthd&tfrom=1&tpl=crystal_blue&timeStamp=1375438817518">在线预约</a></span><a href="cases/view.php?id=93">合肥川豪装饰之华地紫园效果图</a></div>
                  </div>
	 
        <div id="ul8" style="display:none">
          <div class="main_cont_right_img"><a href="cases/view.php?id=92"><img src="images007/ZKf6YQNI53Tgzhl7711_200x150.jpg" width="127" height="71" /></a></div>
          <div class="main_cont_right_title"><span><a target="_blank" href="http://www29.53kf.com/webCompany.php?arg=hfchuan&style=1&language=zh-cn&lytype=0&charset=gbk&kflist=off&kf=&zdkf_type=1&referer=http%3A%2F%2Fwww.hfchuanhao.com%2F%236d&keyword=http%3A//www.hfchuanhao.com/news/index.php%3Fact%3Dzthd&tfrom=1&tpl=crystal_blue&timeStamp=1375438817518">在线预约</a></span><a href="cases/view.php?id=92">合肥川豪装饰之橡树湾效果图</a></div>
                  </div>
	            
        <div class="main_cont_right_dian">
          <div class="a" style="background:url(images007/on.jpg) no-repeat; width:10px; height:7px; float:left; margin-left:100px; _display:inline;"></div>
          <div class="b" style="background:url(images007/noon.jpg) no-repeat; width:10px; height:7px; float:left"></div>
          <div class="c" style="background:url(images007/noon.jpg) no-repeat; width:10px; height:7px; float:left"></div>
        </div>
      </div>
    </div>
    <div class="bottom_contbox">
      <div class="bottom_contbox_fx">
        <ul>
          <li><img src="images007/index2_29.jpg" width="16" height="16" /><a href="#">新浪微博</a></li>
          <li><img src="images007/index2_31.jpg" width="16" height="16" /><a href="#">腾讯微博</a></li>
          <li><img src="images007/index2_39.jpg" width="16" height="16" /><a href="#">人人网</a></li>
          <li><img src="images007/index2_40.jpg" width="16" height="16" /><a href="#">分享到QQ</a></li>
        </ul>
      </div>
      <div class="bottom_contbox_link">
        <ul>
          <li><a href="/about/index.php?act=ppgs">关于川豪</a></li>
          <li><a href="/news/index.php?act=zthd">精彩活动</a></li>
          <li><a href="/sjs/index.php?fid=16">点选设计师</a></li>
          <li><a href="/tzxq/index.php?fid=16">团装小区</a></li>
          <li><a href="/jygc/index.php?act=jygc">精益工程</a></li>
          <li><a href="/cases/index.php?fid=16">精品案例</a></li>
          <li><a href="/khfw/index.php?act=contact">客户服务</a></li>
        </ul>
      </div>
      <div class="bottom_contbox_cont">版权所有 川豪装饰有限公司 2013 www.hfchuan.com&nbsp;&nbsp; </div>
    </div>
  </div>
</div>


</body>
</html>
</div>
<style type="text/css">
.kf{ position:fixed; top:253px; right:30px;/****解决ie6下fixed的不兼容问题 statr*****/
	_position:absolute;
	_top:expression(eval(document.documentElement.scrollTop+document.documentElement.clientHeight-this.offsetHeight-(parseInt(this.currentStyle.marginTop,10)||0)-(parseInt(this.currentStyle.marginBottom,10)||0)));
	margin-bottom:50px;
	/****解决ie6下fixed的不兼容问题  end*****/}
	

</style>

