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
             this.append("<option value='"+key+"' selected>"+dic[key]+"</option>");
        }else{
            this.append("<option value='"+key+"'>"+dic[key]+"</option>");
        }
    }
}