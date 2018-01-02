package com.dwl.rep.common;

import java.io.File;
import java.io.IOException;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.dwl.rep.pojo.ReportDetail;
import com.dwl.rep.pojo.ReportInfo;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

public class FreeMarker {

	
	/**
	 * 生成静态table
	 * @param reportInfo
	 * @return
	 * @throws IOException
	 * @throws TemplateException
	 */
	public static String MakeHtml(ReportInfo reportInfo) throws IOException, TemplateException{
		// 第一步：创建一个Configuration对象。
		Configuration configuration = new Configuration(Configuration.getVersion());
        // 第二步：设置模板文件所在的路径。  
        configuration.setDirectoryForTemplateLoading(new File(PropertyUtils.getProperty("template")));  
        // 第三步：设置模板文件使用的字符集。 
        configuration.setDefaultEncoding("utf-8");  
        // 第四步：加载一个模板，创建一个模板对象。  
        Template template = configuration.getTemplate("table.ftl");  
        // 第五步：创建一个模板使用的数据集。
        Map<String,Object> dataModel = dealData(reportInfo); 
        //向数据集中添加数据  
        //dataModel.put("data", reportInfo);  
        // 第六步：创建一个Writer对象。
        StringWriter out = new StringWriter();
        // 第七步：调用模板对象的process方法输出文件。  
        template.process(dataModel, out);  
        // 第八步：关闭流。  
        out.close(); 
        return out.toString();
		
	}
	
	
	/**
	 * 处理数据
	 * @param reportInfo
	 * @return
	 */
	public static Map<String, Object> dealData(ReportInfo reportInfo){
		Map<String, Object> data = new HashMap<>();
		List<ReportDetail> list = reportInfo.getDetails();
		Map<String, List<ReportDetail>> header = list.stream().collect(Collectors.groupingBy(ReportDetail::getType));
		data.put("row", header.get("0"));
		data.put("column", header.get("1"));
		data.put("hasSec1", reportInfo.getHasSecHead1());
		data.put("hasSec2", reportInfo.getHasSecHead2());
		return data;
		
	}
	
	
	/**
	 * 填充数据
	 * @param html
	 * @param data
	 * @return
	 */
	public static String setData(String html,JSONArray data){
		Document doc = Jsoup.parseBodyFragment(html);
		Element body = doc.body();
		Elements tds = body.getElementsByAttribute("type");
		for(Element td : tds){
			String keyId = td.attr("id");
			String[] keys = Strings.splitIgnoreBlank(keyId);
			int value = 0;
			for(String key:keys){
				for (Iterator<?> iterator = data.iterator(); iterator.hasNext();){
					 JSONObject jsonObject = (JSONObject) iterator.next();
					 if(jsonObject.containsKey(key))
						 value+=jsonObject.getIntValue("value");
				}
			}
			td.html(value+"");
		}
		return doc.toString();
		
	}
		


             
               
		
		
	

}
