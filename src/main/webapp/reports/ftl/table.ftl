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
        	 <td colspan="2"></td>
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
           		    <#if first.isSum=='1'>
	          		  <td  colspan="${first.secHeaderInfo.details?size+1}">${head.value}</td>
	          		 <#else>
	          		   <td  colspan="${first.secHeaderInfo.details?size}">${head.value}</td>
	          		</#if>
				</#list>
				<#if first.isSum=='1'>
				   <td rowspan="2">合计</td>
				</#if>
           <#else>
            	<#list first.headerInfo.details as head>
	          		<td rowspan="2">${head.value}</td>
				</#list>
				<#if first.isSum=='1'>
				   <td rowspan="2">合计</td>
				</#if>
           </#if>
       <#else>
       		<#list first.headerInfo.details as head>
	          	<td>${head.value}</td>
			</#list>
			<#if first.isSum=='1'>
				   <td>合计</td>
			</#if>
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
					 <#if first.isSum=='1'>
					    <td>合计</td>
					  </#if> 
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
    			   <#if col.isSum == "1">
    			       <td rowspan="${col.secHeaderInfo.details?size+1}">${head.value}</td>
    			   <#else>
    			        <td rowspan="${col.secHeaderInfo.details?size}">${head.value}</td>
    			   </#if>
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
								<#if first.isSum=='1'>
								  <td type="data" id="${col.headerInfo.headerDm}#${head.key},${col.secHeaderInfo.headerDm}#${colh.key},${first.headerInfo.headerDm}#${head2.key},${first.secHeaderInfo.headerDm}#all"></td>
								</#if>
							 </#list>
							  <#if first.isSum=='1'>
						  	 	<td type="data" id="${col.headerInfo.headerDm}#${head.key},${col.secHeaderInfo.headerDm}#${colh.key},${first.headerInfo.headerDm}#all,${first.secHeaderInfo.headerDm}#all"></td>
						     </#if>
				           <#else>
				            	<#list first.headerInfo.details as head4>
					          		<td type="data" id="${col.headerInfo.headerDm}#${head.key},${col.secHeaderInfo.headerDm}#${colh.key},${first.headerInfo.headerDm}#${head4.key}"></td>
								</#list>
								<#if first.isSum=='1'>
						  	 		<td type="data" id="${col.headerInfo.headerDm}#${head.key},${col.secHeaderInfo.headerDm}#${colh.key},${first.headerInfo.headerDm}#all"></td>
						        </#if>
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
								<#if first.isSum=='1'>
								  <td type="data" id="${col.headerInfo.headerDm}#${head.key},${col.secHeaderInfo.headerDm}#${colh.key},${first.headerInfo.headerDm}#${head2.key},${first.secHeaderInfo.headerDm}#all"></td>
								</#if>
							 </#list>
							 <#if first.isSum=='1'>
						  	 	<td type="data" id="${col.headerInfo.headerDm}#${head.key},${col.secHeaderInfo.headerDm}#${colh.key},${first.headerInfo.headerDm}#all,${first.secHeaderInfo.headerDm}#all"></td>
						     </#if>
				           <#else>
				            	<#list first.headerInfo.details as head4>
					          		<td type="data" id="${col.headerInfo.headerDm}#${head.key},${col.secHeaderInfo.headerDm}#${colh.key},${first.headerInfo.headerDm}#${head4.key}"></td>
								</#list>
								<#if first.isSum=='1'>
						  	 		<td type="data" id="${col.headerInfo.headerDm}#${head.key},${col.secHeaderInfo.headerDm}#${colh.key},${first.headerInfo.headerDm}#all"></td>
						        </#if>
				           </#if>
				           
			  		 	</#list>
    			      </#if>
    			 </#list>
    			 <#if col.isSum == "1">
    			 	<tr>
    			 	<td>合计</td>
		      		<#list row as first>
		  		      <#-- 有2级表头 -->
			           <#if first.secHeaderInfo??>
			           	 <#list first.headerInfo.details as head2>
			           		<#list first.secHeaderInfo.details as head3>
				          		<td type="data" id="${col.headerInfo.headerDm}#${head.key},${col.secHeaderInfo.headerDm}#all,${first.headerInfo.headerDm}#${head2.key},${first.secHeaderInfo.headerDm}#${head3.key}"></td>
							</#list>
							<#if first.isSum=='1'>
							  <td type="data" id="${col.headerInfo.headerDm}#${head.key},${col.secHeaderInfo.headerDm}#all,${first.headerInfo.headerDm}#${head2.key},${first.secHeaderInfo.headerDm}#all"></td>
							</#if>
						 </#list>
						 <#if first.isSum=='1'>
							    <td type="data" id="${col.headerInfo.headerDm}#${head.key},${col.secHeaderInfo.headerDm}#all,${first.headerInfo.headerDm}#all,${first.headerInfo.headerDm}#all"></td>
					  	 </#if>
			           <#else>
			            	<#list first.headerInfo.details as head4>
				          		<td type="data" id="${col.headerInfo.headerDm}#${head.key},${col.secHeaderInfo.headerDm}#all,${first.headerInfo.headerDm}#${head4.key}"></td>
							</#list>
							<#if first.isSum=='1'>
							    <td type="data" id="${col.headerInfo.headerDm}#${head.key},${col.secHeaderInfo.headerDm}#all,${first.headerInfo.headerDm}#all"></td>
					  		</#if>
			           </#if>
			          
		  		 	</#list> 
		  		 	</tr>
    			 </#if>
    		</#list>
    		<#if col.isSum == "1">
    			 <tr>
    			 	<td colspan="2">合计</td>
		      		<#list row as first>
		  		      <#-- 有2级表头 -->
			           <#if first.secHeaderInfo??>
			           	 <#list first.headerInfo.details as head2>
			           		<#list first.secHeaderInfo.details as head3>
				          		<td type="data" id="${col.headerInfo.headerDm}#all,${col.secHeaderInfo.headerDm}#all,${first.headerInfo.headerDm}#${head2.key},${first.secHeaderInfo.headerDm}#${head3.key}"></td>
							</#list>
							<#if first.isSum=='1'>
							  <td type="data" id="${col.headerInfo.headerDm}#all,${col.secHeaderInfo.headerDm}#all,${first.headerInfo.headerDm}#${head2.key},${first.secHeaderInfo.headerDm}#all"></td>
							</#if>
						 </#list>
						 <#if first.isSum=='1'>
							    <td type="data" id="${col.headerInfo.headerDm}#all,${col.secHeaderInfo.headerDm}#all,${first.headerInfo.headerDm}#all,${first.headerInfo.headerDm}#all"></td>
					  	 </#if>
			           <#else>
			            	<#list first.headerInfo.details as head4>
				          		<td type="data" id="${col.headerInfo.headerDm}#all,${col.secHeaderInfo.headerDm}#all,${first.headerInfo.headerDm}#${head4.key}"></td>
							</#list>
							<#if first.isSum=='1'>
							  	<td type="data" id="${col.headerInfo.headerDm}#all,${col.secHeaderInfo.headerDm}#all,${first.headerInfo.headerDm}#all"></td>
							 </#if>
			           </#if>
			           
		  		 	</#list> 
		  		 </tr>
    		</#if>
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
								<#if first.isSum=='1'>
								  <td type="data" id="${col.headerInfo.headerDm}#${head.key},${first.headerInfo.headerDm}#${head2.key},${first.secHeaderInfo.headerDm}#all"></td>
								</#if>
							 </#list>
							 <#if first.isSum=='1'>
								  <td type="data" id="${col.headerInfo.headerDm}#${head.key},${first.headerInfo.headerDm}#all,${first.secHeaderInfo.headerDm}#all"></td>
							 </#if>
				           <#else>
				            	<#list first.headerInfo.details as head4>
					          		<td type="data" id="${col.headerInfo.headerDm}#${head.key},${first.headerInfo.headerDm}#${head4.key}"></td>
								</#list>
								 <#if first.isSum=='1'>
								    <td type="data" id="${col.headerInfo.headerDm}#${head.key},${first.headerInfo.headerDm}#all"></td>
								 </#if>
				           </#if>
						 
			  	  </#list>
    		    </tr> 
    		 </#list>
    		 <#if col.isSum == "1">
    		      <tr>
    		       <td colspan="2"> 合计</td>
    		       <#list row as first>
			  		      <#--有2级表头 -->
				           <#if first.secHeaderInfo??>
				           	 <#list first.headerInfo.details as head2>
				           		<#list first.secHeaderInfo.details as head3>
					          		<td type="data" id="${col.headerInfo.headerDm}#all,${first.headerInfo.headerDm}#${head2.key},${first.secHeaderInfo.headerDm}#${head3.key}"></td>
								</#list>
								<#if first.isSum=='1'>
								  <td type="data" id="${col.headerInfo.headerDm}#all,${first.headerInfo.headerDm}#${head2.key},${first.secHeaderInfo.headerDm}#all"></td>
								</#if>
							 </#list>
				           <#else>
				            	<#list first.headerInfo.details as head4>
					          		<td type="data" id="${col.headerInfo.headerDm}#all,${first.headerInfo.headerDm}#${head4.key}"></td>
								</#list>
				           </#if>
						  <#if first.isSum=='1'>
						    <td type="data" id="${col.headerInfo.headerDm}#all,${first.headerInfo.headerDm}#all"></td>
						  </#if>
			  	  </#list>
    		    </tr> 
    		 </#if>
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
						<#if first.isSum=='1'>
						   <td type="data" id="${col.headerInfo.headerDm}#${head.key},${first.headerInfo.headerDm}#${head2.key},${first.secHeaderInfo.headerDm}#all"></td>
						 </#if>
					 </#list>
					 <#if first.isSum=='1'>
						   <td type="data" id="${col.headerInfo.headerDm}#${head.key},${first.headerInfo.headerDm}#all,${first.secHeaderInfo.headerDm}#all"></td>
					 </#if>
		           <#else>
		            	<#list first.headerInfo.details as head4>
			          		<td type="data" id="${col.headerInfo.headerDm}#${head.key},${first.headerInfo.headerDm}#${head4.key}"></td>
						</#list>
						<#if first.isSum=='1'>
						   <td type="data" id="${col.headerInfo.headerDm}#${head.key},${first.headerInfo.headerDm}#all"></td>
					    </#if>
		           </#if>
		           
	  		 </#list>
	  	  </tr>
		</#list>
		<#if col.isSum == "1">
		   <tr>
		     <td>合计</td>
		     <#list row as first>
	  		      <#-- 有2级表头 -->
		           <#if first.secHeaderInfo??>
		           	 <#list first.headerInfo.details as head2>
		           		<#list first.secHeaderInfo.details as head3>
			          		<td type="data" id="${col.headerInfo.headerDm}#all,${first.headerInfo.headerDm}#${head2.key},${first.secHeaderInfo.headerDm}#${head3.key}"></td>
						</#list>
						<#if first.isSum=='1'>
						   <td type="data" id="${col.headerInfo.headerDm}#all,${first.headerInfo.headerDm}#${head2.key},${first.secHeaderInfo.headerDm}#all"></td>
						 </#if>
					 </#list>
					 <#if first.isSum=='1'>
						   <td type="data" id="${col.headerInfo.headerDm}#all,${first.headerInfo.headerDm}#all,${first.secHeaderInfo.headerDm}#all"></td>
					 </#if>
		           <#else>
		            	<#list first.headerInfo.details as head4>
			          		<td type="data" id="${col.headerInfo.headerDm}#all,${first.headerInfo.headerDm}#${head4.key}"></td>
						</#list>
						<#if first.isSum=='1'>
						   <td type="data" id="${col.headerInfo.headerDm}#all,${first.headerInfo.headerDm}#all"></td>
					    </#if>
		           </#if>
	  		 </#list>
		   </tr>
		</#if>
	</#if>
 </#list>
</table>