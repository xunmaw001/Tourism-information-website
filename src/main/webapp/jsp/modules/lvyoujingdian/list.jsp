<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
	<%@ include file="../../static/head.jsp"%>
	<!-- font-awesome -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
</head>
<style>

</style>
<body>
	<!-- Pre Loader -->
	<div class="loading">
		<div class="spinner">
			<div class="double-bounce1"></div>
			<div class="double-bounce2"></div>
		</div>
	</div>
	<!--/Pre Loader -->
	<div class="wrapper">
		<!-- Page Content -->
		<div id="content">
				<!-- Top Navigation -->
				<%@ include file="../../static/topNav.jsp"%>
				<!-- Menu -->
				<div class="container menu-nav">
					<nav class="navbar navbar-expand-lg lochana-bg text-white">
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
						 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="ti-menu text-white"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<!-- <div class="z-navbar-nav-title">$template2.back.menu.title.text</div> -->
							<ul id="navUl" class="navbar-nav mr-auto">						
							</ul>
						</div>
					</nav>
				</div>
				<!-- /Menu -->
				<!-- Breadcrumb -->
				<!-- Page Title -->
				<div class="container mt-0">
					<div class="row breadcrumb-bar">
						<div class="col-md-6">
							<h3 class="block-title">旅游景点管理</h3>
						</div>
						<div class="col-md-6">
							<ol class="breadcrumb">
								<li class="breadcrumb-item">
									<a href="${pageContext.request.contextPath}/index.jsp">
										<span class="ti-home"></span>
									</a>
								</li>
								<li class="breadcrumb-item"><span>旅游景点管理</span></li>
								<li class="breadcrumb-item active"><span>旅游景点列表</span></li>
							</ol>
						</div>
					</div>
				</div>
			<!-- /Page Title -->

			<!-- /Breadcrumb -->
			<!-- Main Content -->
			<div class="container">

				<div class="row">
					<!-- Widget Item -->
					<div class="col-md-12">
						<div class="widget-area-2 lochana-box-shadow">
							<h3 class="widget-title">旅游景点列表</h3>							
							<div class="table-responsive mb-3" id="tableDiv">
								<div class="col-sm-12">
									<label>
										景点
									</label>
									<input type="text" id="jingdianSearch" class="form-control form-control-sm" placeholder="" aria-controls="tableId">
									<label>
										等级
									</label>
									<select name="dengji" id="dengjiSelect" class="form-control form-control-sm" aria-controls="tableId">
										<option value=" "> </option>
										<option value="1A">1A</option>
										<option value="2A">2A</option>
										<option value="3A">3A</option>
										<option value="4A">4A</option>
										<option value="5A">5A</option>
									</select>
									<label>
										季节
									</label>
									<select name="jijie" id="jijieSelect" class="form-control form-control-sm" aria-controls="tableId">
										<option value=" "> </option>
										<option value="春季">春季</option>
										<option value="夏季">夏季</option>
										<option value="秋季">秋季</option>
										<option value="冬季">冬季</option>
										<option value="全年">全年</option>
									</select>
									<label>
										类型
									</label>
									<select name="leixing" id="leixingSelect" class="form-control form-control-sm" aria-controls="tableId">
										<option value=" "> </option>
										<option value="自然景观">自然景观</option>
										<option value="人文景观">人文景观</option>
										<option value="地文景观">地文景观</option>
										<option value="水域风光">水域风光</option>
										<option value="生物景观">生物景观</option>
										<option value="天象气候">天象气候</option>
										<option value="历史遗址">历史遗址</option>
										<option value="民族民俗">民族民俗</option>
										<option value="宗教">宗教</option>
									</select>
									<button onclick="search()" type="button" class="btn btn-primary">查询</button>
									<button onclick="add()" type="button" class="btn btn-success 新增">添加</button>
									<button onclick="deleteMore()" type="button" class="btn btn-danger 删除">批量删除</button>
								</div>
								<table id="tableId" class="table table-bordered table-striped">
									<thead>
										<tr>
											<th class="no-sort" style="min-width: 35px;">
												<div class="custom-control custom-checkbox">
													<input class="custom-control-input" type="checkbox" id="select-all" onclick="chooseAll()">
													<label class="custom-control-label" for="select-all"></label>
												</div>
											</th>
											<th onclick="sort('jingdian')">景点<i id="jingdianIcon" class="fa fa-sort"></i></th>
											<th onclick="sort('dengji')">等级<i id="dengjiIcon" class="fa fa-sort"></i></th>
											<th onclick="sort('jijie')">季节<i id="jijieIcon" class="fa fa-sort"></i></th>
											<th onclick="sort('leixing')">类型<i id="leixingIcon" class="fa fa-sort"></i></th>
											<th onclick="sort('jiaotong')">交通<i id="jiaotongIcon" class="fa fa-sort"></i></th>

											<th>封面</th>
											<th onclick="sort('kaiyuan')">开园<i id="kaiyuanIcon" class="fa fa-sort"></i></th>
											<th onclick="sort('guanyuan')">关园<i id="guanyuanIcon" class="fa fa-sort"></i></th>

											<th>介绍</th>
											<th onclick="sort('xiangqing')">详情<i id="xiangqingIcon" class="fa fa-sort"></i></th>



											
											<th onclick="sort('price')">价格<i id="priceIcon" class="fa fa-sort"></i></th>
											<th onclick="sort('longitude')">经度<i id="longitudeIcon" class="fa fa-sort"></i></th>
											<th onclick="sort('latitude')">纬度<i id="latitudeIcon" class="fa fa-sort"></i></th>
											<th onclick="sort('fulladdress')">地址<i id="fulladdressIcon" class="fa fa-sort"></i></th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
								<div class="col-md-6 col-sm-3 z-pages" style="flex:none;max-width:inherit;display:flex;">
									<div class="dataTables_length" id="tableId_length">
										
											<select name="tableId_length" aria-controls="tableId" id="selectPageSize" onchange="changePageSize()">
												<option value="10">10</option>
												<option value="25">25</option>
												<option value="50">50</option>
												<option value="100">100</option>
											</select> 
											<span class="text">条每页</span>
										
									</div>
									<nav aria-label="Page navigation example">
										<ul class="pagination justify-content-end">
											<li class="page-item" id="tableId_previous" onclick="pageNumChange('pre')">
												<a class="page-link" href="#" tabindex="-1">上一页</a>
											</li>
									
											<li class="page-item" id="tableId_next" onclick="pageNumChange('next')">
												<a class="page-link" href="#">下一页</a>
											</li>
										</ul>
									</nav>
								</div>
								
							</div>
						</div>
					</div>
					<!-- /Widget Item -->
				</div>
			</div>
			<!-- /Main Content -->

		</div>
		<!-- /Page Content -->
	</div>
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">
		<span class="ti-angle-up"></span>
	</a>
	<!-- /Back to Top -->
	<%@ include file="../../static/foot.jsp"%>
	<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/resources/My97DatePicker/WdatePicker.js"></script>

	<script>
		<%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>
		<%@ include file="../../static/getRoleButtons.js"%>
		<%@ include file="../../static/crossBtnControl.js"%>
		var tableName = "lvyoujingdian";
		var pageType = "list";
	  	var searchForm = { key: ""};
		var pageIndex = 1;
		var pageSize = 10;
		var totalPage = 0;
		var dataList = [];
		var sortColumn = '';
		var sortOrder= '';
		var ids = [];
		var checkAll = false;


		function init() {
			// 满足条件渲染提醒接口
		}
		// 改变每页记录条数
		function changePageSize() {
		    var selection = document.getElementById('selectPageSize');
		    var index = selection.selectedIndex;
			pageSize = selection.options[index].value;
			getDataList();
        }		
		//排序
		function sort(columnName){
			var iconId = '#'+columnName+'Icon'
			$('th i').attr('class','fa fa-sort');
			if(sortColumn == '' || sortColumn != columnName){
				sortColumn = columnName;
				sortOrder = 'asc';
				$(iconId).attr('class','fa fa-sort-asc');
			}
			if(sortColumn == columnName){
				if(sortOrder == 'asc'){
					sortOrder = 'desc';
					$(iconId).attr('class','fa fa-sort-desc');
				}else{
					sortOrder = 'asc';
					$(iconId).attr('class','fa fa-sort-asc');
				}
			}
			pageIndex = 1;
			getDataList();
		}		
		
		// 查询
		function search(){
			searchForm = { key: ""};
			if($('#jingdianSearch').val() != null && $('#jingdianSearch').val() != ''){
				searchForm.jingdian ="%" +  $('#jingdianSearch').val() + "%";
			}
			
			var dengjiIndex = document.getElementById("dengjiSelect").selectedIndex;
			var dengjiOptions = document.getElementById("dengjiSelect").options;
			var dengjiSelectedOption = dengjiOptions[dengjiIndex]
			if(dengjiSelectedOption.text != null && dengjiSelectedOption.text != ''){
				searchForm.dengji = "%" + dengjiSelectedOption.text + "%";
			}
			var jijieIndex = document.getElementById("jijieSelect").selectedIndex;
			var jijieOptions = document.getElementById("jijieSelect").options;
			var jijieSelectedOption = jijieOptions[jijieIndex]
			if(jijieSelectedOption.text != null && jijieSelectedOption.text != ''){
				searchForm.jijie = "%" + jijieSelectedOption.text + "%";
			}
			var leixingIndex = document.getElementById("leixingSelect").selectedIndex;
			var leixingOptions = document.getElementById("leixingSelect").options;
			var leixingSelectedOption = leixingOptions[leixingIndex]
			if(leixingSelectedOption.text != null && leixingSelectedOption.text != ''){
				searchForm.leixing = "%" + leixingSelectedOption.text + "%";
			}
			getDataList();
		}		
		// 获取数据列表
        function getDataList() {
			http("lvyoujingdian/page","GET",{
				page: pageIndex,
				limit: pageSize,
				sort: sortColumn,
				order: sortOrder,
				jingdian : searchForm.jingdian,	
				dengji : searchForm.dengji,	
				jijie : searchForm.jijie,	
				leixing : searchForm.leixing,	
			},(res)=>{
				if(res.code == 0){
					clear();
					dataList = res.data.list;
					totalPage = res.data.totalPage;
					//var tbody = document.getElementById('tbMain');
					for(var i = 0;i < dataList.length; i++){ //遍历一下表格数据  
						var trow = setDataRow(dataList[i],i); //定义一个方法,返回tr数据 
						$('tbody').append(trow); 
					}
					pagination(); //渲染翻页组件
					getRoleButtons();// 权限按钮控制
				}
			});
        }		
		// 渲染表格数据
		function setDataRow(item,number){
			//创建行 
			var row = document.createElement('tr'); 
			row.setAttribute('class','useOnce');
			//创建勾选框
			var checkbox = document.createElement('td');
			var checkboxDiv = document.createElement('div');
			checkboxDiv.setAttribute("class","custom-control custom-checkbox");
			var checkboxInput = document.createElement('input');
			checkboxInput.setAttribute("class","custom-control-input");
			checkboxInput.setAttribute("type","checkbox");
			checkboxInput.setAttribute('name','chk');
			checkboxInput.setAttribute('value',item.id);
			checkboxInput.setAttribute("id",number);
			checkboxDiv.appendChild(checkboxInput);
			var checkboxLabel = document.createElement('label');
			checkboxLabel.setAttribute("class","custom-control-label");
			checkboxLabel.setAttribute("for",number);
			checkboxDiv.appendChild(checkboxLabel);
			checkbox.appendChild(checkboxDiv);
			row.appendChild(checkbox)

			var jingdianCell  = document.createElement('td');

						 jingdianCell.innerHTML = item.jingdian;


			row.appendChild(jingdianCell);
			var dengjiCell  = document.createElement('td');

						  dengjiCell.innerHTML = item.dengji; 

			row.appendChild(dengjiCell);
			var jijieCell  = document.createElement('td');

						  jijieCell.innerHTML = item.jijie; 

			row.appendChild(jijieCell);
			var leixingCell  = document.createElement('td');

						  leixingCell.innerHTML = item.leixing; 

			row.appendChild(leixingCell);
			var jiaotongCell  = document.createElement('td');

						  jiaotongCell.innerHTML = item.jiaotong; 

			row.appendChild(jiaotongCell);
			var fengmianCell  = document.createElement('td');

				                var fengmianImg = document.createElement('img');
			fengmianImg.setAttribute('src',item.fengmian);
			fengmianImg.setAttribute('height',100);
			fengmianImg.setAttribute('width',100);
			fengmianCell.appendChild(fengmianImg);


			row.appendChild(fengmianCell);
			var kaiyuanCell  = document.createElement('td');

						 kaiyuanCell.innerHTML = item.kaiyuan;


			row.appendChild(kaiyuanCell);
			var guanyuanCell  = document.createElement('td');

						 guanyuanCell.innerHTML = item.guanyuan;


			row.appendChild(guanyuanCell);
			var jieshaoCell  = document.createElement('td');

						  if(item.jieshao != null && item.jieshao != "" && item.jieshao.length >= 11){
			  	jieshaoCell.innerHTML = item.jieshao.substring(0, 10) + "..."; 
			  }else{
			  	jieshaoCell.innerHTML = item.jieshao;
			  }


			row.appendChild(jieshaoCell);
			var xiangqingCell  = document.createElement('td');

						  //如果图文详情包含图片
			  if(item.xiangqing && item.xiangqing.indexOf('img') != -1){
				//暂时只考虑图片+文字 和 文字+图片的情况
				var beginIndex = item.xiangqing.indexOf('<img');
				var endIndex = item.xiangqing.indexOf('>');				
				xiangqingCell.innerHTML = item.xiangqing.substring(beginIndex, endIndex+1).replace("img","img width='100' height='100'");				
			  }else{
			  	 if(item.xiangqing != null && item.xiangqing != "" && item.xiangqing.length >= 11){
			  		xiangqingCell.innerHTML = item.xiangqing.substring(0, 10) + "..."; 
			  	}else{
			  		xiangqingCell.innerHTML = item.xiangqing;
			 	}
			  }
				  


			row.appendChild(xiangqingCell);
			var thumbsupnumCell  = document.createElement('td');

			


			var crazilynumCell  = document.createElement('td');

			


			var clicktimeCell  = document.createElement('td');

						  clicktimeCell.innerHTML = item.clicktime;



							var clicknumCell  = document.createElement('td');

			


			var priceCell  = document.createElement('td');

						  priceCell.innerHTML = item.price; 


			row.appendChild(priceCell);
			var longitudeCell  = document.createElement('td');

						 longitudeCell.innerHTML = item.longitude;


			row.appendChild(longitudeCell);
			var latitudeCell  = document.createElement('td');

						 latitudeCell.innerHTML = item.latitude;


			row.appendChild(latitudeCell);
			var fulladdressCell  = document.createElement('td');

						 fulladdressCell.innerHTML = item.fulladdress;


			row.appendChild(fulladdressCell);

			//每行按钮
			var btnGroup = document.createElement('td');

			//详情按钮
			var detailBtn = document.createElement('button');
			var detailAttr = "detail(" + item.id + ')';
			detailBtn.setAttribute("type","button");
			detailBtn.setAttribute("class","btn btn-info btn-sm 查看");
			detailBtn.setAttribute("onclick",detailAttr);
			detailBtn.innerHTML = "查看"
			btnGroup.appendChild(detailBtn)
			//修改按钮
			var editBtn = document.createElement('button');
			var editAttr = 'edit(' +  item.id + ')';
			editBtn.setAttribute("type","button");
			editBtn.setAttribute("class","btn btn-warning btn-sm 修改");
			editBtn.setAttribute("onclick",editAttr);
			editBtn.innerHTML = "修改"

			btnGroup.appendChild(editBtn)
			//删除按钮
			var deleteBtn = document.createElement('button');
			var deleteAttr = 'remove(' +  item.id + ')';
			deleteBtn.setAttribute("type","button");
			deleteBtn.setAttribute("class","btn btn-danger btn-sm 删除");
			deleteBtn.setAttribute("onclick",deleteAttr);
			deleteBtn.innerHTML = "删除"
			btnGroup.appendChild(deleteBtn)


			row.appendChild(btnGroup)
			return row;
		}		

		// 翻页
        function pageNumChange(val) {
            if(val == 'pre') {
                pageIndex--;
            }else if(val == 'next'){
                pageIndex++;
            }else{
                pageIndex = val;
            }
			getDataList();
        }		
		// 下载
		function download(url){
			window.open(url);
		}
		// 打开新窗口播放媒体
		function mediaPlay(url){
			window.open(url);
		}		
		// 渲染翻页组件
		function pagination() {
			var beginIndex = pageIndex;
			var endIndex = pageIndex;
			var point = 4;
			//计算页码
			for(var i=0;i<3;i++){
				if(endIndex==totalPage){ break;}
				endIndex++;
				point--;
			}
			for(var i=0;i<3;i++){
				if(beginIndex==1){break;}
				beginIndex--;
				point--;
			}
			if(point>0){
				while (point>0){
					if(endIndex==totalPage){ break;}
					endIndex++;
					point--;
				}
				while (point>0){
					if(beginIndex==1){ break;}
					beginIndex--;
					point--
				}
			}
			// 是否显示 前一页 按钮
			if(pageIndex>1){
				$('#tableId_previous').show();
			}else{
				$('#tableId_previous').hide();
			}
			// 渲染页码按钮
			for(var i=beginIndex;i<=endIndex;i++){
				var pageNum = document.createElement('li');
				pageNum.setAttribute('onclick',"pageNumChange("+i+")");
				if(pageIndex == i){
					pageNum.setAttribute('class','paginate_button page-item active useOnce');
				}else{
					pageNum.setAttribute('class','paginate_button page-item useOnce');
				}								
				var pageHref = document.createElement('a');
				pageHref.setAttribute('class','page-link');
				pageHref.setAttribute('href','#');
				pageHref.setAttribute('aria-controls','tableId');
				pageHref.setAttribute('data-dt-idx',i);
				pageHref.setAttribute('tabindex',0);
				pageHref.innerHTML = i;
				pageNum.appendChild(pageHref);
				$('#tableId_next').before(pageNum);
			}
			// 是否显示 下一页 按钮
			if(pageIndex < totalPage){
				$('#tableId_next').show();
				$('#tableId_next a').attr('data-dt-idx',endIndex+1);
			}else{
				$('#tableId_next').hide();
			}
			var pageNumInfo = "当前第 "+ pageIndex + " 页，共 "+ totalPage + " 页";
			$('#tableId_info').html(pageNumInfo);
		}		
		// 跳转到指定页
		function toThatPage(){
			//var index = document.getElementById('pageIndexInput').value;
			if(index<0 || index>totalPage){
				alert('请输入正确的页码');
			}else {
				pageNumChange(index);
			}
		}		
		// 全选/全不选
		function chooseAll(){
			checkAll = !checkAll;
			var boxs = document.getElementsByName("chk");
			for(var i=0;i<boxs.length;i++){
				boxs[i].checked= checkAll;
			}
		}		
	
		// 批量删除
		function deleteMore(){
			ids = []
			var boxs = document.getElementsByName("chk");
			for(var i=0;i<boxs.length;i++){
				if(boxs[i].checked){
					ids.push(boxs[i].value)
				}
			}
			if(ids.length == 0){
				alert('请勾选要删除的记录');
			}else{
				remove(ids);
			}
		}	
		// 删除
        function remove(id) { 
            var mymessage = confirm("真的要删除吗？");
            if (mymessage == true) {
				var paramArray = [];
				if (id == ids){
					paramArray = id;
				}else{
					paramArray.push(id);
				}             
				httpJson("lvyoujingdian/delete","POST",paramArray,(res)=>{
					if(res.code == 0){
						getDataList();		
						alert('删除成功');
					}
				});         
            }
            else {
                alert("已取消操作");
            }
        }			
		// 用户登出
        <%@ include file="../../static/logout.jsp"%>

		//修改
        function edit(id) {
            window.sessionStorage.setItem('id', id)
            window.location.href = "add-or-update.jsp"
        }
		//清除会重复渲染的节点
        function clear(){
        	var elements = document.getElementsByClassName('useOnce');
        	for(var i = elements.length - 1; i >= 0; i--) { 
        	  elements[i].parentNode.removeChild(elements[i]); 
        	}
        }
		//添加
		function add(){
			window.location.href = "add-or-update.jsp"
		}
		//单列求和
		function getSum(colName){
			http("lvyoujingdian"+colName,"GET",{
				tableName: "lvyoujingdian",
				columnName: colName
			},(res)=>{
				if(res.code == 0){
					return res.data.sum;
				}
			});
		}		
		// 查看详情
		function detail(id){
			window.sessionStorage.setItem("id", id);
			//window.sessionStorage.setItem("ifView", true);
			window.location.href = "info.jsp";
		}

		//跨表
		function crossTable(id,crossTableName){
			window.sessionStorage.setItem('crossTableId',id);
			window.sessionStorage.setItem('crossTableName',"lvyoujingdian");
			var url = "../"+crossTableName+"/add-or-update.jsp";
			window.location.href = url;
        }




		$(document).ready(function() { 
			//激活翻页按钮
			$('#tableId_previous').attr('class','paginate_button page-item previous')
			$('#tableId_next').attr('class','paginate_button page-item next')
			//隐藏原生搜索框
			$('#tableId_filter').hide()
			//设置右上角用户名
			$('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
			//设置项目名
			$('.sidebar-header h3 a').html(projectName)
			setMenu();			
			init();
			getDataList();
			<%@ include file="../../static/myInfo.js"%>
		});
	</script>
</body>

</html>
