package com.dwl.rep.common.DB.impl;

import com.dwl.rep.common.DB.DataBase;

public class OracleBase implements DataBase {

	@Override
	public String getDriver() {
		return "oracle.jdbc.driver.OracleDriver";
	}

	@Override
	public String getLinkSql() {
		return "select 1 from dual";
	}

	@Override
	public String getDbType() {
		return "Oracle";
	}

}
