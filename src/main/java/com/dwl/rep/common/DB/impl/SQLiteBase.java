package com.dwl.rep.common.DB.impl;

import com.dwl.rep.common.DB.DataBase;

public class SQLiteBase implements DataBase {

	@Override
	public String getDriver() {
		return "org.sqlite.JDBC";
	}

	@Override
	public String getLinkSql() {
		return "SELECT 'x'";
	}

	@Override
	public String getDbType() {
		return "SQLite";
	}

}
