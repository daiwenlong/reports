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