package com.dwl.rep.service;

import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dwl.rep.common.Strings;
import com.dwl.rep.dao.HeaderDetailMapper;
import com.dwl.rep.dao.HeaderInfoMapper;
import com.dwl.rep.pojo.HeaderDetail;
import com.dwl.rep.pojo.HeaderInfo;

@Service("headerService")
public class HeaderService {
	
	@Resource
	private HeaderInfoMapper headerInfoMapper;
	
	
	@Resource
	private HeaderDetailMapper headerDetailMapper;
	
	public HeaderInfo getHeaderWithDetail(String id){
		return headerInfoMapper.selectWithDetailByPrimaryKey(id);
	}
	
	public List<HeaderInfo> getHeadList(){
		return headerInfoMapper.selectInfoList();
	}
	
	public int InsertHeader(HeaderInfo headerInfo){
		List<HeaderDetail> list = headerInfo.getDetails();
		for(int i=0;i<list.size();i++){
			if(!Strings.isEmpty(list.get(i).getValue())){
				list.get(i).setId(UUID.randomUUID().toString());
				list.get(i).setHeaderId(headerInfo.getHeaderId());
				list.get(i).setOrders(i);
				headerDetailMapper.insert(list.get(i));
			}
		}
		return headerInfoMapper.insert(headerInfo);
	}
	
	public int updateHead(HeaderInfo headerInfo){
		headerDetailMapper.deleteByHeaderId(headerInfo.getHeaderId());
		List<HeaderDetail> list = headerInfo.getDetails();
		for(int i=0;i<list.size();i++){
			if(!Strings.isEmpty(list.get(i).getValue())){
				list.get(i).setId(UUID.randomUUID().toString());
				list.get(i).setHeaderId(headerInfo.getHeaderId());
				list.get(i).setOrders(i);
				headerDetailMapper.insert(list.get(i));
			}
		}
		return headerInfoMapper.updateByPrimaryKey(headerInfo);
		
	}
	
	public int deleteHeader(String headerId){
		headerDetailMapper.deleteByHeaderId(headerId);
		return headerInfoMapper.deleteByPrimaryKey(headerId);
	}
	

}
