<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<!-- bootstrap样式，地图插件使用 -->
		<link rel="stylesheet" href="../../css/bootstrap.min.css" />
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<body style="background: #EEEEEE; ">


		<div id="app">

			<!-- 轮播图 -->
			<div class="layui-carousel" id="swiper">
				<div carousel-item id="swiper-item">
					<div v-for="(item,index) in swiperList" v-bind:key="index">
						<img class="swiper-item" :src="item.img">
					</div>
				</div>
			</div>
			<!-- 轮播图 -->

			<div class="data-add-container">

				<form class="layui-form layui-form-pane" lay-filter="myForm">
					
                                                            <div class="layui-form-item" pane>
						<label class="layui-form-label">景点：</label>
						<div class="layui-input-block">
							<input v-model="detail.jingdian" type="text" name="jingdian" id="jingdian" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
                        <label class="layui-form-label">等级</label>
                        <div class="layui-input-block">
                            <select name="dengji" id="dengji" lay-filter="dengji">
                                <option value="">请选择</option>
                                <option v-for="(item,index) in dengji" v-bind:key="index" :value="item">{{item}}</option>
                            </select>
                        </div>
                    </div>
                                                                                <div class="layui-form-item" pane>
                        <label class="layui-form-label">季节</label>
                        <div class="layui-input-block">
                            <select name="jijie" id="jijie" lay-filter="jijie">
                                <option value="">请选择</option>
                                <option v-for="(item,index) in jijie" v-bind:key="index" :value="item">{{item}}</option>
                            </select>
                        </div>
                    </div>
                                                                                <div class="layui-form-item" pane>
                        <label class="layui-form-label">类型</label>
                        <div class="layui-input-block">
                            <select name="leixing" id="leixing" lay-filter="leixing">
                                <option value="">请选择</option>
                                <option v-for="(item,index) in leixing" v-bind:key="index" :value="item">{{item}}</option>
                            </select>
                        </div>
                    </div>
                                                                                <div class="layui-form-item" pane>
                        <label class="layui-form-label">交通</label>
                        <div class="layui-input-block">
                            <select name="jiaotong" id="jiaotong" lay-filter="jiaotong">
                                <option value="">请选择</option>
                                <option v-for="(item,index) in jiaotong" v-bind:key="index" :value="item">{{item}}</option>
                            </select>
                        </div>
                    </div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">封面：</label>
						<div v-if="detail.fengmian" class="layui-input-block">
							<img id="fengmianImg" style="width: 100px;height: 100px;border-radius: 50%;border: 2px solid #EEEEEE;" :src="detail.fengmian">
							<input type="hidden" :value="detail.fengmian" id="fengmian" name="fengmian" />
						</div>
						<div class="layui-input-block">
							<button type="button" class="layui-btn btn-theme" id="fengmianUpload">
								<i class="layui-icon">&#xe67c;</i>上传封面
							</button>
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">开园：</label>
						<div class="layui-input-block">
							<input v-model="detail.kaiyuan" type="text" name="kaiyuan" id="kaiyuan" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">关园：</label>
						<div class="layui-input-block">
							<input v-model="detail.guanyuan" type="text" name="guanyuan" id="guanyuan" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                                                                                                                                        <div class="layui-form-item" pane>
						<label class="layui-form-label">赞：</label>
						<div class="layui-input-block">
							<input v-model="detail.thumbsupnum" type="text" name="thumbsupnum" id="thumbsupnum" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">踩：</label>
						<div class="layui-input-block">
							<input v-model="detail.crazilynum" type="text" name="crazilynum" id="crazilynum" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">最近点击时间：</label>
						<div class="layui-input-block">
							<input type="text" name="clicktime" id="clicktime" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">点击次数：</label>
						<div class="layui-input-block">
							<input v-model="detail.clicknum" type="text" name="clicknum" id="clicknum" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">价格：</label>
						<div class="layui-input-block">
							<input v-model="detail.price" type="text" name="price" id="price" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                            					                                        					                                        					<div class="layui-form-item" pane>
						<label class="layui-form-label">地址：</label>
						<div class="layui-input-block">
							<input type="text" name="fulladdress" id="fulladdress" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                    <div class="layui-form-item" pane>
						<label class="layui-form-label">详情：</label>
						<div class="layui-input-block">
							<textarea name="xiangqing" id="xiangqing">请输入详情</textarea>
						</div>
					</div>
                                                                                                                                                                                                                                                                                                                                                                        
					<div class="layui-form-item">
						<div class="layui-input-block" style="text-align: right;margin-right: 30px;">
							<button class="layui-btn btn-submit" lay-submit lay-filter="*">提交</button>
							<button type="reset" class="layui-btn layui-btn-primary">重置</button>
						</div>
					</div>
				</form>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>
		<!-- 地图 -->
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=ca04cee7ac952691aa67a131e6f0cee0"></script>
		<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../js/bootstrap.AMapPositionPicker.js"></script>

		<script>
			var jquery = $;
			
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					dataList: [],
                    detail: {
                                                                        jingdian: '',
                                                                                                dengji: '',
                                                                                                jijie: '',
                                                                                                leixing: '',
                                                                                                jiaotong: '',
                                                                                                fengmian: '',
                                                                                                kaiyuan: '',
                                                                                                guanyuan: '',
                                                                                                jieshao: '',
                                                                                                xiangqing: '',
                                                                                                thumbsupnum: '',
                                                                                                crazilynum: '',
                                                                                                clicktime: '',
                                                                                                clicknum: '',
                                                                                                price: '',
                                                                                                longitude: '',
                                                                                                latitude: '',
                                                                                                fulladdress: '',
                                                                    },
                    																				dengji: [],
																				jijie: [],
																				leixing: [],
																				jiaotong: [],
																																																																																																																																																	centerMenu: centerMenu
				},
				updated: function() {
					layui.form.render('select', 'myForm');
				},
                computed: {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            },
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})

						// 初始化地图插件
			jquery(document).ready(function() {
				var p = jquery("#fulladdress").AMapPositionPicker();
				jquery("#fulladdress").on('click', function() {
					var position = p.AMapPositionPicker('position');
					jquery('#fulladdress').val(position.address)
				});
			});
			
			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate','tinymce'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;
				var laydate = layui.laydate;
                var tinymce = layui.tinymce

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 5
				}, function(res) {
					if (res.data.list.length > 0) {
						var swiperItemHtml = '';
						for (let item of res.data.list) {
							if (item.name.indexOf('picture') >= 0 && item.value && item.value != "" && item.value != null) {
								swiperItemHtml +=
									'<div>' +
									'<img class="swiper-item" src="' + item.value + '">' +
									'</div>';
							}
						}
						jquery('#swiper-item').html(swiperItemHtml);
						// 轮播图
						carousel.render({
							elem: '#swiper',
							width: swiper.width,height:swiper.height,
							arrow: swiper.arrow,
							anim: swiper.anim,
							interval: swiper.interval,
							indicator: "none"
						});
					}
				});

                																vue.dengji = '1A,2A,3A,4A,5A'.split(',')
																vue.jijie = '春季,夏季,秋季,冬季,全年'.split(',')
																vue.leixing = '自然景观,人文景观,地文景观,水域风光,生物景观,天象气候,历史遗址,民族民俗,宗教'.split(',')
																vue.jiaotong = '正常,畅通,拥堵'.split(',')
																// 上传图片
				var fengmianUpload = upload.render({
					//绑定元素
					elem: '#fengmianUpload',
					//上传接口
					url: http.baseurl + 'file/upload',
					// 请求头
					headers: {
						Token: localStorage.getItem('Token')
					},
					// 允许上传时校验的文件类型
					accept: 'images',
					before: function() {
						//loading层
						var index = layer.load(1, {
							shade: [0.1, '#fff'] //0.1透明度的白色背景
						});
					},
					// 上传成功
					done: function(res) {
						console.log(res);
						layer.closeAll();
						if (res.code == 0) {
							layer.msg("上传成功", {
								time: 2000,
								icon: 6
							})
							var url = http.baseurl + 'upload/' + res.file;
							jquery('#fengmian').val(url);
							jquery('#fengmianImg').attr('src', url)
                            vue.detail.fengmian = url;
						} else {
							layer.msg(res.msg, {
								time: 2000,
								icon: 5
							})
						}
					},
					//请求异常回调
					error: function() {
						layer.closeAll();
						layer.msg("请求接口异常", {
							time: 2000,
							icon: 5
						})
					}
				});
																																				                var edit = tinymce.render({
                    elem: "#xiangqing",
                    height: 600,
                    images_upload_handler: function(blobInfo, succFun, failFun) {
                        var xhr, formData;
                        var file = blobInfo.blob(); //转化为易于理解的file对象
                        xhr = new XMLHttpRequest();
                        xhr.withCredentials = false;
                        xhr.open('POST', http.baseurl + 'file/upload');
                        xhr.setRequestHeader("Token", localStorage.getItem('Token')); //设置请求头
                        xhr.onload = function() {
                            var json;
                            if (xhr.status != 200) {
                                failFun('HTTP Error: ' + xhr.status);
                                return;
                            }
                            json = JSON.parse(xhr.responseText);
                            if (!json || typeof json.file != 'string') {
                                failFun('Invalid JSON: ' + xhr.responseText);
                                return;
                            }
                            succFun(http.baseurl + '/upload/' + json.file);
                        };
                        formData = new FormData();
                        formData.append('file', file, file.name); //此处与源文档不一样
                        xhr.send(formData);
                    }
                }, (opt) => {

                });
																																laydate.render({
					elem: '#clicktime',
					type: 'datetime'
				});
                																																																
                                // session独取
				let table = localStorage.getItem("userTable");
				http.request(`${table}/session`, 'get', {}, function(data) {
					// 表单赋值
					//form.val("myForm", data.data);
					data = data.data
					for(var key in data){
						vue.detail[`${key}`] = data[`${key}`]
					}
				});
                
                // 跨表计算
                if(http.getParam('corss')){
					var obj = JSON.parse(localStorage.getItem('crossObj'));
					//form.val("myForm", obj);
					for(var key in obj){
						vue.detail[`${key}`] = obj[`${key}`]
					}
				}
				
                																																																																																																																																																
				// 提交
				form.on('submit(*)', function(data) {
					data = data.field;
					
                    // 数据校验
					                    					                                                                                                                                                                					                                                                                                                                                                					                                                                                                                                                                					                                                                                                                                                                					                                                                                                                                                                					                                                                                                                                                                					                                                                                                                                                                					                                                                                                                                                                					                                                                                                                                                                					var xiangqing = tinymce.get('#xiangqing').getContent()
					data.xiangqing = xiangqing;
										                                                                                                                                                                					                                        if(!isIntNumer(data.thumbsupnum)){
                        layer.msg('赞应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                                                                					                                        if(!isIntNumer(data.crazilynum)){
                        layer.msg('踩应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                                                                					                                                                                                                                                                					                                        if(!isIntNumer(data.clicknum)){
                        layer.msg('点击次数应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                                                                					                    if(!data.price){
                        layer.msg('价格不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                if(!isNumber(data.price)){
                        layer.msg('价格应输入数字', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                                            					                                                            if(!isNumber(data.longitude)){
                        layer.msg('经度应输入数字', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                                            					                                                            if(!isNumber(data.latitude)){
                        layer.msg('纬度应输入数字', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                                            					                                                                                                                                            
					// 跨表计算
					                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                					
                    // 比较大小
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    					
					// 提交数据
					http.requestJson('lvyoujingdian' + '/add', 'post', data, function(res) {
					 	layer.msg('提交成功', {
					 		time: 2000,
					 		icon: 6
					 	}, function() {
					 		back();
						});
					 });

					return false
				});

			});
		</script>
	</body>
</html>
