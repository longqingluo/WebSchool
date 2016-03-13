/*
	这里是编写dashboard控制台的JS代码，仅限与控制台使用。
	2016.03.13	by wenkangqiang
*/


$(function(){
	/*
	 * 实现侧边框叶子被点击时，iframe页面被跳转
	 */
	$(".sideBarleave").click(function(){
		var url = $(this).attr("url");
		var parent = $(this).parent();
		$(".sideBarleave").removeClass("active");	//去除active
		$(this).addClass("active");					//添加active
		$("#mainiframe").attr("src",url);
	});
	
	
});