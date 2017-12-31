<table  class="table table-bordered table-striped text-center">
<#-- 横表头 -->
 <tr id="first">
    <#if hasSec1 == "1">
        <#if hasSec2 == "1">
        	 <td rowspan="2" colspan="2"></td>
        <#else>
              <td rowspan="2"></td>
         </#if>
    <#else>
        <#if hasSec2 == "1">
        	 <td rowspan="2"></td>
        <#else>
              <td></td>
         </#if>
    </#if>
    <#-- 循环headInfo表头 -->
    <#list row as first>
       <#-- 是否有2级表头 -->
       <#if hasSec1 == "1">
           <#if first.secHeaderInfo??>
           		<#list first.headerInfo.details as head>
	          		<td  colspan="${first.secHeaderInfo.details?size}">${head.value}</td>
				</#list>
           <#else>
            	<#list first.headerInfo.details as head>
	          		<td rowspan="2">${head.value}</td>
				</#list>
           </#if>
       <#else>
       		<#list first.headerInfo.details as head>
	          	<td>${head.value}</td>
			</#list>
       </#if>      	
	</#list>
 </tr>
 <#if hasSec1 == "1">
 	<tr id="second">
 		<#list row as first>
           <#if first.secHeaderInfo??>
                <#list first.headerInfo.details as head>
	           		<#list first.secHeaderInfo.details as head>
		          		<td>${head.value}</td>
					</#list>
				</#list>
           </#if>   	
	</#list>  
 	</tr>
 </#if>
 <#-- 竖表头 -->
 <#list column as col>
    <#if hasSec2 == "1">
    	<#if col.secHeaderInfo??>
    		<#list col.headerInfo.details as head>
    			<tr>
    			   <td rowspan="${col.secHeaderInfo.details?size}">${head.value}</td>
    			   <#list col.secHeaderInfo.details as colh>
    			      <#if colh_index == 0>
    			       <td>${colh.value}</td>
			      		<#list row as first>
			  		      <#-- 有2级表头 -->
				           <#if first.secHeaderInfo??>
				           	 <#list first.headerInfo.details as head2>
				           		<#list first.secHeaderInfo.details as head3>
					          		<td type="data" id="${col.headerInfo.headerDm}#${head.key},${col.secHeaderInfo.headerDm}#${colh.key},${first.headerInfo.headerDm}#${head2.key},${first.secHeaderInfo.headerDm}#${head3.key}"></td>
								</#list>
							 </#list>
				           <#else>
				            	<#list first.headerInfo.details as head4>
					          		<td type="data" id="${col.headerInfo.headerDm}#${head.key},${col.secHeaderInfo.headerDm}#${colh.key},${first.headerInfo.headerDm}#${head4.key}"></td>
								</#list>
				           </#if>
			  		 	</#list>
    			      </#if>
    			   </#list> 
    			</tr>
    			
    			<#list col.secHeaderInfo.details as colh>
    			      <#if colh_index != 0>
    			       <td>${colh.value}</td>
			      		<#list row as first>
			  		      <#-- 有2级表头 -->
				           <#if first.secHeaderInfo??>
				           	 <#list first.headerInfo.details as head2>
				           		<#list first.secHeaderInfo.details as head3>
					          		<td type="data" id="${col.headerInfo.headerDm}#${head.key},${col.secHeaderInfo.headerDm}#${colh.key},${first.headerInfo.headerDm}#${head2.key},${first.secHeaderInfo.headerDm}#${head3.key}"></td>
								</#list>
							 </#list>
				           <#else>
				            	<#list first.headerInfo.details as head4>
					          		<td type="data" id="${col.headerInfo.headerDm}#${head.key},${col.secHeaderInfo.headerDm}#${colh.key},${first.headerInfo.headerDm}#${head4.key}"></td>
								</#list>
				           </#if>
			  		 	</#list>
    			      </#if>
    			 </#list> 
    		</#list>
    	<#else>
    		 <#list col.headerInfo.details as head>
    		    <tr>
    		       <td colspan="2"> ${head.value}</td>
    		       <#list row as first>
			  		      <#--有2级表头 -->
				           <#if first.secHeaderInfo??>
				           	 <#list first.headerInfo.details as head2>
				           		<#list first.secHeaderInfo.details as head3>
					          		<td type="data" id="${col.headerInfo.headerDm}#${head.key},${first.headerInfo.headerDm}#${head2.key},${first.secHeaderInfo.headerDm}#${head3.key}"></td>
								</#list>
							 </#list>
				           <#else>
				            	<#list first.headerInfo.details as head4>
					          		<td type="data" id="${col.headerInfo.headerDm}#${head.key},${first.headerInfo.headerDm}#${head4.key}"></td>
								</#list>
				           </#if>
			  	  </#list>
    		    <tr>
    		 </#list>
    	</#if>
    <#else>
	 	<#list col.headerInfo.details as head>
	 	  <tr>
	  		<td>${head.value}</td>
	  		 <#list row as first>
	  		      <#-- 有2级表头 -->
		           <#if first.secHeaderInfo??>
		           	 <#list first.headerInfo.details as head2>
		           		<#list first.secHeaderInfo.details as head3>
			          		<td type="data" id="${col.headerInfo.headerDm}#${head.key},${first.headerInfo.headerDm}#${head2.key},${first.secHeaderInfo.headerDm}#${head3.key}"></td>
						</#list>
					 </#list>
		           <#else>
		            	<#list first.headerInfo.details as head4>
			          		<td type="data" id="${col.headerInfo.headerDm}#${head.key},${first.headerInfo.headerDm}#${head4.key}"></td>
						</#list>
		           </#if>
	  		 </#list>
	  	  </tr>
		</#list>
	</#if>
 </#list>
</table>