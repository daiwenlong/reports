package com.dwl.rep.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dwl.rep.common.Strings;
import com.dwl.rep.dao.NumInfoMapper;
import com.dwl.rep.pojo.NumInfo;

@Service("numService")
public class NumService {
	
	@Resource
	private NumInfoMapper numInfoMapper;
	
	/**
	 * 取号
	 * 假装没并发:）
	 * @param id
	 * @return
	 */
	public String getNum(String id){
		NumInfo numInfo = null;
		if(!Strings.isEmpty(id)){
			numInfo = numInfoMapper.selectByPrimaryKey(id);
			if (null == numInfo) {
				numInfo = new NumInfo();
				numInfo.setNumId(id);				
				numInfo.setNumNow(0);			
				numInfoMapper.insert(numInfo);
			}
			numInfo.setNumNow(numInfo.getNumNow()+1);
			numInfoMapper.updateByPrimaryKey(numInfo);
			String suffix = "000"+numInfo.getNumNow();
			StringBuilder builder = new StringBuilder(id);
			builder.append(suffix.substring(suffix.length()-4));
			return builder.toString();
		}
		return null;
	}
}
