/**
 * 系统首页js
 */
$(function() {
	if ($('#areascontent').height() > $(window).height() - 20) {
		$('#areascontent').css("margin-right", "0px");
	}
	$('#areascontent').height($(window).height() - 22);
	$(window).resize(function(e) {
		window.setTimeout(function() {
			$('#areascontent').height($(window).height() - 22);
		}, 200);
	});
	
	lineChart();
	barChart();
	pieChart();
});

/**
 * 折线图
 * @returns
 */
function lineChart() {
	var myChart = echarts.init(document.getElementById('lineChart'));
    var option = {
	    tooltip: {
	        trigger: 'axis'
	    },
	    grid: {
	    	left: '8%',
	    	top: 30,
	    	right: '5%',
	    	bottom: 20
	    },
	    legend: {
	        data:['订单数', '成交额']
	    },
	    xAxis:  {
	        type: 'category',
	        boundaryGap: false,
	        data: ['周一','周二','周三','周四','周五','周六','周日']
	    },
	    yAxis: {
	        type: 'value'
	    },
	    series: [
	        {
	            name:'订单数',
	            type:'line',
	            data:[11, 11, 15, 13, 12, 13, 56]
	        },
	        {
	            name:'成交额',
	            type:'line',
	            data:[110, 114, 135, 163, 122, 133, 256]
	        }
	    ]
	};
    myChart.setOption(option);
}

/**
 * 柱状图
 * @returns
 */
function barChart() {
	var myChart = echarts.init(document.getElementById('barChart'));
    var option = {
    	color: ['#578EBE'],
    	tooltip : {
	        trigger: 'axis',
	        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
	            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
	        }
	    },
	    grid: {
	    	left: '3%',
	    	top: 10,
	    	right: '2%',
	    	bottom: 20
	    },
	    xAxis : [
	        {
	            type : 'category',
	            data : ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
	            axisTick: {
	                alignWithLabel: true
	            }
	        }
	    ],
	    yAxis : [
	        {
	            type : 'value'
	        }
	    ],
	    series : [
	        {
	            name:'直接访问',
	            type:'bar',
	            barWidth: '60%',
	            data:[10, 52, 200, 334, 390, 330, 220]
	        }
	    ]
	};
    myChart.setOption(option);
}

/**
 * 饼状图
 * @returns
 */
function pieChart() {
	var myChart = echarts.init(document.getElementById('pieChart'));
	var option = option = {
	    tooltip: {
	        trigger: 'item',
	        formatter: "{a} <br/>{b}: {c} ({d}%)"
	    },
	    legend: {
	        x: 'center',
	        y: '190px',
	        data:['事假','病假','公休假','调休假']
	    },
	    series: [
	        {
	            name:'访问来源',
	            type:'pie',
	            radius: ['40%', '70%'],
	            center: ['50%', '40%'],
	            avoidLabelOverlap: false,
	            label: {
	                normal: {
	                    show: false,
	                    position: 'center'
	                },
	                emphasis: {
	                    show: false,
	                    textStyle: {
	                        fontSize: '30',
	                        fontWeight: 'bold'
	                    }
	                }
	            },
	            labelLine: {
	                normal: {
	                    show: false
	                }
	            },
	            data:[
	                {value:335, name:'事假'},
	                {value:310, name:'病假'},
	                {value:234, name:'公休假'},
	                {value:135, name:'调休假'}
	            ]
	        }
	    ]
	};
	myChart.setOption(option);
}

