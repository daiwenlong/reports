/**
 * @param options
 * initvalue 初始选项
 * dic 字典json
 * value 选择项
 */
$.fn.select = function(options) {
	var select = this;
	if(options.initvalue!=null&&options.initvalue!=''){
        this.append("<option>"+options.initvalue+"</option>");  
    }
	var dic;
    if(options.dic!=null&&options.dic!=''){
    	dic = options.dic;
    }
    for(key in dic){
        if(key == options.value){
        	select.append("<option value='"+key+"' selected>"+dic[key]+"</option>");
        }else{
        	select.append("<option value='"+key+"'>"+dic[key]+"</option>");
        }
    }
};

$.fn.ajaxselect = function(options) {
	var select = this;
	$.get(options.url,function(result){
		if(options.initvalue!=null&&options.initvalue!=''){
	        this.append("<option>"+options.initvalue+"</option>");  
	    }
	    for(key in result){
	        if(key == options.value){
	        	 select.append("<option value='"+key+"' selected>"+result[key]+"</option>");
	        }else{
	            select.append("<option value='"+key+"'>"+result[key]+"</option>");
	        }
	    }
	});
};

$.fn.ajaxselectmore = function(options) {
	var select = this;
	var data = {};
	if(options.value != ''){
		data = eval('('+options.value+')');
	}
	$.get(options.url,function(result){
	    for(key in result){
	        if(data.hasOwnProperty(key)){
	        	 select.append("<option value='"+key+"' selected>"+result[key]+"</option>");
	        }else{
	            select.append("<option value='"+key+"'>"+result[key]+"</option>");
	        }
	    }
	    select.selectpicker({
		 });
	});
};

/**
 * 多个相同类型select
 * @param items
 * @param url
 * @returns
 */
function  multiajaxselect(items,url){
	$.get(url,function(result){
		if(items!=null){
			items.each(function(){
				var value = $(this).attr("data");
				$(this).append("<option value=''>请选择</option>");
				for(key in result){
			        if(key == value){
			        	$(this).append("<option value='"+key+"' selected>"+result[key]+"</option>");
			        }else{
			        	$(this).append("<option value='"+key+"'>"+result[key]+"</option>");
			        }
				}
			});
		}
	});
}

function multiselect(items,dic){
	if(items!=null){
		items.each(function(){
			var value = $(this).attr("data");
			for(key in dic){
		        if(key == value){
		        	$(this).append("<option value='"+key+"' selected>"+dic[key]+"</option>");
		        }else{
		        	$(this).append("<option value='"+key+"'>"+dic[key]+"</option>");
		        }
			}
		});
	}
}

/**
 * 列表字典转换
 * @param items
 * @param dic
 * @returns
 */
function dicvalue(items,dic){
	if(items!=null){
		items.each(function(){
			$(this).html(dic[$(this).text()]);
		});
	}
};