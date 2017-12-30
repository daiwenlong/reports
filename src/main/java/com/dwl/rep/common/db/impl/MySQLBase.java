package com.dwl.rep.common.db.impl;

import com.dwl.rep.common.db.DataBase;

public class MySQLBase implements DataBase {

	@Override
	public String getDriver() {
		return "com.mysql.jdbc.Driver";
	}

	@Override
	public String getLinkSql() {
		return "select 1";
	}

	@Override
	public String getDbType() {
		return "MySQL";
	}

}
