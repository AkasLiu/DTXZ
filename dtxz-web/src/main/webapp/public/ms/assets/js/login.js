BUI.use('common/main', function() {
	    /** 定义导航菜单配置信息数组 */
	    var config = [{
	        id: '1', // 唯一标识符id
	        homePage: '11', // 当前显示的菜单id
	        menu: [{
	            text: '用户管理', // 主菜单
	            items: [{
	                id: '11',
	                text: '用户查询',
	                href: 'user_search.html'
	            },{
	                id: '12',
	                text: '用户认证',
	                href: 'user_certificate.html'
	            }]
	        }, {
	            text: '题目管理', // 主菜单
	            items: [{
	                id: '21',
	                text: '题目查询',
	                href: 'essay_search.html'
	            },{
	                id: '22',
	                text: '题目删除',
	                href: 'essay_delete.html'
	            }]
	        }, {
	            text: '流量分析', // 主菜单
	            items: [{
	                id: '31',
	                text: '流量分析',
	                href: 'flowannaly.html'
	            }]
	        }]
	    }];
	    /** 显示导航菜单 */
	    new PageUtil.MainPage({
	        modulesConfig: config
	    });
	});